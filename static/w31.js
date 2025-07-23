let currentLang = "html";

function scrollToTopic(topicId) {
  const el = document.getElementById(topicId);
  if (el) el.scrollIntoView({ behavior: "smooth", block: "start" });
}

function loadTopics(lang) {
  currentLang = lang;

  fetch(`/topics/${lang}`)
    .then(res => res.json())
    .then(topics => {
      if (!Array.isArray(topics)) throw new Error("Topics is not a list");

      const sidebar = document.getElementById("sidebar");
      const content = document.getElementById("content");
      sidebar.innerHTML = "";
      content.innerHTML = "";

      if (topics.length === 0) {
        sidebar.innerHTML = "<li style='color:red;'>No topics found</li>";
        return;
      }

      topics.forEach(topic => {
        const topicId = topic.trim().replace(/\s+/g, '_').toLowerCase();

        // Sidebar link
        const li = document.createElement("li");
        li.textContent = topic;
        li.style.cursor = "pointer";
        li.onclick = () => {
          document.querySelectorAll('#sidebar li').forEach(el => el.classList.remove('active'));
          li.classList.add('active');
          scrollToTopic(topicId);
        };
        sidebar.appendChild(li);

        // Content section
        fetch(`/content/${lang}/${encodeURIComponent(topic)}`)
          .then(res => res.json())
          .then(data => {
            const section = document.createElement("div");
            section.className = "topic-section";
            section.id = topicId;

            const title = document.createElement("h2");
            title.textContent = topic;

            const desc = document.createElement("p");
            desc.textContent = data.content;

            const textarea = document.createElement("textarea");
            textarea.value = data.code.trim();
            const originalCode = data.code.trim();

            const runBtn = document.createElement("button");
            runBtn.textContent = "Run Code";

            const clearBtn = document.createElement("button");
            clearBtn.textContent = "Clear";

            const output = document.createElement("iframe");
            output.style.width = "100%";
            output.style.height = "150px";
            output.style.border = "1px solid #ccc";
            output.style.marginTop = "10px";

            const errorBox = document.createElement("div");
            errorBox.className = "error-msg";

            runBtn.onclick = () => {
              const userCode = textarea.value.trim();
              errorBox.textContent = "";

              if (["html", "css", "js"].includes(currentLang)) {
                output.srcdoc = userCode;
              } else {
                fetch("/run-code", {
                  method: "POST",
                  headers: { "Content-Type": "application/json" },
                  body: JSON.stringify({
                    language: currentLang === "python" ? "python3" : currentLang,
                    code: userCode
                  })
                })
                  .then(res => res.json())
                  .then(result => {
                    if (result.output) {
                      output.srcdoc = `<pre>${result.output}</pre>`;
                    } else {
                      output.srcdoc = `<pre style="color:red;">${result.error || "Unknown error"}</pre>`;
                    }
                  })
                  .catch(err => {
                    output.srcdoc = `<pre style="color:red;">${err.message}</pre>`;
                  });
              }
            };

            clearBtn.onclick = () => {
              textarea.value = originalCode;
              output.srcdoc = "";
              errorBox.textContent = "";
            };

            section.appendChild(title);
            section.appendChild(desc);
            section.appendChild(textarea);
            section.appendChild(runBtn);
            section.appendChild(clearBtn);
            section.appendChild(errorBox);
            section.appendChild(output);

            content.appendChild(section);
          });
      });
    })
    .catch(err => {
      console.error("Error loading topics:", err);
      document.getElementById("sidebar").innerHTML = `<li style="color:red;">Error loading topics</li>`;
    });
}

window.onload = () => {
  loadTopics("html");
};
