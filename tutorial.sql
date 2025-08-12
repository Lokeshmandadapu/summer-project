-- Step 1: Recreate database
DROP DATABASE IF EXISTS tutorial;
CREATE DATABASE tutorial;
USE tutorial;

-- Step 2: Create topics table with topic_order
CREATE TABLE topics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    language VARCHAR(50),
    topic_name VARCHAR(255),
    content TEXT,
    code TEXT,
    topic_order INT,
    UNIQUE (language, topic_name)
);
SELECT language, topic_name FROM topics ORDER BY language, topic_order;


INSERT INTO topics (language, topic_name, content, code, topic_order) VALUES
-- 1. HTML Introduction
('html', 'HTML Introduction',
'HTML stands for HyperText Markup Language.\nIt is used to create web pages and web applications.\nHTML describes the structure of a webpage.\nIt consists of a series of elements or tags.\nBrowsers read HTML to render the content.\nTags like <html>, <head>, and <body> define layout.\nHTML can include text, images, links, and media.\nIt is the backbone of all websites.\nHTML is easy to learn and widely supported.\nHTML5 is the latest version with many new features.',
'<!DOCTYPE html>\n<html>\n  <head>\n    <title>My First Page</title>\n  </head>\n  <body>\n    <h1>Welcome!</h1>\n    <p>This is my first HTML page.</p>\n  </body>\n</html>', 1),

-- 2. HTML Elements
('html', 'HTML Elements',
'HTML elements are the building blocks of HTML pages.\nEach element consists of a start tag, content, and an end tag.\nExamples include <p>, <div>, <h1>, <a>, etc.\nSome elements are self-closing, like <img> and <br>.\nNested elements are common in HTML.\nThe <html> element is the root of an HTML document.\nUse <head> for metadata and <body> for content.\nElements can contain text, other elements, or both.\nAttributes can be added to elements for extra info.\nProper nesting and indentation improves readability.',
'<p>This is a paragraph.</p>\n<div>\n  <h1>Heading</h1>\n  <p>Nested inside div</p>\n</div>', 2),

-- 3. HTML Attributes
('html', 'HTML Attributes',
'Attributes provide extra information about HTML elements.\nThey are always specified in the start tag.\nCommon attributes include href, src, alt, title, etc.\nAttributes usually come in name/value pairs like name="value".\nThe href attribute in <a> specifies the link target.\nThe src attribute in <img> defines the image source.\nThe alt attribute provides alternate text for images.\nUse style attribute to add inline CSS styles.\nUse class and id for styling and scripting.\nAttribute values must be enclosed in quotes.',
'<a href="https://example.com">Visit Example</a>\n<img src="image.jpg" alt="Description">', 3),

-- 4. HTML Headings
('html', 'HTML Headings',
'Headings are defined with <h1> to <h6> tags.\n<h1> is the largest, and <h6> is the smallest.\nHeadings are important for SEO.\nThey help structure the content semantically.\nBrowsers display them in bold by default.\nOnly one <h1> should be used per page ideally.\nHeadings should follow a hierarchical order.\nThey improve accessibility for screen readers.\nThey can be styled with CSS.\nAvoid skipping heading levels unnecessarily.',
'<h1>Main Heading</h1>\n<h2>Subheading</h2>\n<h3>Section Heading</h3>', 4),

-- 5. HTML Paragraphs
('html', 'HTML Paragraphs',
'Paragraphs are defined using the <p> tag.\nThey are block-level elements.\nBrowsers add margin before and after paragraphs.\nYou can include text, inline elements, and entities.\nMultiple spaces collapse into one.\nUse <br> for line breaks inside a paragraph.\nUse &nbsp; for non-breaking spaces.\nParagraphs help structure text content.\nCSS can style font, size, spacing, and more.\nAvoid using multiple <br> tags for spacing.',
'<p>This is a paragraph.</p>\n<p>This is another one.</p>\n<p>Line 1<br>Line 2</p>', 5),

-- 6. HTML Links
('html', 'HTML Links',
'Links are defined using the <a> (anchor) tag.\nThe href attribute specifies the URL of the page the link goes to.\nText inside the anchor tag is clickable.\nYou can link to external websites, internal pages, or page sections.\nUse target="_blank" to open a link in a new tab.\nYou can link to email using "mailto:email@example.com".\nAnchor links can navigate to sections with IDs.\nStyling links with CSS helps distinguish them.\nVisited links may appear in a different color.\nLinks are inline elements by default.',
'<a href="https://www.w3schools.com">Visit W3Schools</a>\n<a href="#section1">Jump to Section 1</a>', 6),

-- 7. HTML Images
('html', 'HTML Images',
'Images are embedded with the <img> tag.\nThe src attribute specifies the image path or URL.\nThe alt attribute provides alternative text.\nUse width and height to control image size.\nImages are inline elements.\nUse CSS for better layout control.\nResponsive images can be created with max-width: 100%.\nUse <figure> and <figcaption> for semantic markup.\nImages should be optimized for performance.\nYou can link images using <a> around <img>.',
'<img src="logo.png" alt="Logo" width="200">\n<figure>\n  <img src="image.jpg" alt="Nature">\n  <figcaption>Nature View</figcaption>\n</figure>', 7),

-- 8. HTML Tables
('html', 'HTML Tables',
'Tables display data in rows and columns.\nUse <table>, <tr>, <th>, and <td> tags.\n<tr> defines a table row.\n<th> defines a header cell (bold & centered by default).\n<td> defines a data cell.\nUse border and padding to style tables.\n<thead>, <tbody>, and <tfoot> structure tables.\nUse colspan and rowspan to merge cells.\nResponsive tables can be scrollable.\nAvoid excessive nesting inside tables.',
'<table border="1">\n<tr><th>Name</th><th>Age</th></tr>\n<tr><td>Alice</td><td>25</td></tr>\n</table>', 8),

-- 9. HTML Lists
('html', 'HTML Lists',
'HTML supports ordered, unordered, and description lists.\n<ul> defines an unordered list (bullets).\n<ol> defines an ordered list (numbers).\n<li> defines a list item in ul or ol.\n<dl> is used for description lists.\n<dt> defines the term, <dd> the description.\nLists can be nested.\nCSS can style list types, bullets, and spacing.\nList elements are block-level.\nAvoid using too many levels of nested lists.',
'<ul>\n  <li>HTML</li>\n  <li>CSS</li>\n</ul>\n<ol>\n  <li>Step 1</li>\n  <li>Step 2</li>\n</ol>', 9),

-- 10. HTML Forms
('html', 'HTML Forms',
'Forms are used to collect user input.\nUse the <form> element to create a form.\nCommon elements: <input>, <textarea>, <select>, <button>.\nThe action attribute defines where to send the data.\nThe method attribute defines GET or POST request.\nUse <label> to label form controls.\n<input type="text"> creates a text field.\n<input type="submit"> creates a submit button.\nAlways validate forms with JS or HTML5 attributes.\nForms should be accessible and responsive.',
'<form action="/submit" method="post">\n  <label>Name:</label>\n  <input type="text" name="name">\n  <input type="submit">\n</form>', 10);
INSERT INTO topics (language, topic_name, content, code, topic_order) VALUES
('html', 'HTML Input Types', 
'HTML input types define what kind of data can be entered in a form field.\nSome common types include text, email, number, date, and password.\nThe "type" attribute is used in the <input> tag to specify the input type.\nDifferent types bring different behaviors and UI features.\nFor example, type="email" enables email validation.\nPlaceholders can guide users on what to enter.\nLabels should be used for accessibility.\nHTML5 introduced many new types like date, range, color.\nProper input types improve user experience.\nThey also help with client-side form validation.', 
'<input type=''email'' placeholder=''Enter email''>', 11),

('html', 'HTML Semantic Tags', 
'Semantic HTML elements clearly describe their meaning.\nExamples include <header>, <footer>, <article>, <section>.\nThey make code more readable and accessible.\nSearch engines use semantics to better understand content.\nThey replace non-semantic elements like <div> and <span>.\n<header> is used for top sections like logos or navbars.\n<footer> is used for bottom sections like contact info.\n<article> is for independent content blocks.\n<section> is used to group related content.\nSemantic elements are important for SEO and screen readers.', 
'<header><h1>Welcome</h1></header>\n<footer>Copyright 2025</footer>', 12),

('html', 'HTML Block vs Inline', 
'HTML elements are either block-level or inline.\nBlock-level elements start on a new line and take full width.\nExamples of block elements: <div>, <p>, <h1>, <section>.\nInline elements don’t start on a new line.\nThey take up only as much width as needed.\nExamples of inline elements: <span>, <a>, <img>, <strong>.\nBlock elements can contain other blocks or inlines.\nInline elements usually only contain text or other inlines.\nUnderstanding this helps in layout and styling.\nUse CSS to change how elements behave if needed.', 
'<div>This is block</div>\n<span>This is inline</span>', 13),

('html', 'HTML Iframes', 
'Iframes allow you to embed another webpage inside the current page.\nUse the <iframe> tag with the src attribute to set the page URL.\nYou can embed YouTube videos, maps, or other websites.\nYou can set width and height attributes.\nAdd border, scrolling, or allowfullscreen options.\nIframes may be restricted by some websites using CORS policies.\nThey can be a security risk if not handled properly.\nAlways provide a valid URL for the src attribute.\nAvoid using too many iframes in one page.\nBrowsers may block insecure or cross-site iframes.', 
'<iframe src=''https://example.com'' width=''300'' height=''200''></iframe>', 14),

('html', 'HTML Audio', 
'The <audio> tag is used to embed sound content in a webpage.\nUse the controls attribute to display play/pause buttons.\nSupported formats include MP3, WAV, and OGG.\nUse the <source> element inside the audio tag.\nMultiple sources can be provided for fallback.\nIf not supported, fallback text will be displayed.\nAudio files must be in a valid format and accessible.\nYou can loop or autoplay the audio.\nBrowsers support different audio formats.\nAlways test audio on different devices and browsers.', 
'<audio controls>\n<source src=''song.mp3''>\n</audio>', 15),

('html', 'HTML Video', 
'The <video> tag is used to embed videos into HTML pages.\nUse controls to allow users to play/pause the video.\nVideo formats supported include MP4, WebM, and Ogg.\nUse <source> tag for each format to ensure compatibility.\nYou can set width, height, autoplay, and loop.\nIf not supported, browsers show fallback content.\nAlways test your video on multiple browsers.\nAdd captions for accessibility when needed.\nUse compressed video for faster load times.\nKeep video file paths correct and accessible.', 
'<video width=''320'' controls>\n<source src=''video.mp4''>\n</video>', 16),

('html', 'HTML Comments', 
'Comments in HTML are not displayed in the browser.\nThey are written between <!-- and -->.\nUsed to leave notes in the code for developers.\nHelpful for explaining code logic or sections.\nCan be placed anywhere in the HTML document.\nThey don’t affect how the page is rendered.\nUseful for debugging or temporarily disabling code.\nAvoid leaving sensitive info in comments.\nCan span single or multiple lines.\nGood commenting improves maintainability.', 
'<!-- This is a comment -->', 17),

('html', 'HTML Meta Tags', 
'Meta tags go inside the <head> section of the document.\nThey provide metadata about the HTML document.\nExamples include charset, viewport, and description.\n<meta charset="UTF-8"> defines character encoding.\n<meta name="viewport"> ensures responsiveness.\n<meta name="description"> helps with SEO.\nThey are not displayed on the page.\nUsed by browsers and search engines.\nHelp with page behavior and appearance.\nImportant for modern, responsive websites.', 
'<meta charset=''UTF-8''>\n<meta name=''viewport'' content=''width=device-width, initial-scale=1.0''>', 18),

('html', 'HTML DOCTYPE', 
'DOCTYPE tells the browser which HTML version to use.\nIt should be the first line in your HTML document.\n<!DOCTYPE html> is for HTML5.\nIt ensures consistent rendering across browsers.\nIt’s not an HTML tag.\nWithout DOCTYPE, browsers may go into quirks mode.\nIt helps avoid layout bugs.\nCase-insensitive but usually written uppercase.\nOlder versions like HTML4 had longer DOCTYPEs.\nAlways include it for standards compliance.', 
'<!DOCTYPE html>', 19),

('html', 'HTML Entities', 
'HTML entities are used to display reserved or special characters.\nThey start with & and end with ;\nExamples: &lt; for <, &gt; for >, &amp; for &.\nThey are used to prevent conflicts with tags.\nUseful for displaying symbols like ©, ®, or €.\nCommon entities include &nbsp; for space.\nEntities improve code clarity and correctness.\nMake sure to encode user-generated input properly.\nCan be used inside attributes or content.\nHelp avoid broken rendering in HTML.', 
'&lt;p&gt;Hello&lt;/p&gt; shows <p> tag.', 20);

-- ✅ Insert 20 structured CSS topics in order
-- Assumes table `topics` has columns: language, topic_name, content, code, topic_order

INSERT INTO topics (language, topic_name, content, code, topic_order) VALUES
('css', 'CSS Introduction',
'CSS stands for Cascading Style Sheets.\nIt is used to style and format HTML documents.\nCSS controls colors, fonts, spacing, and layout.\nIt separates design from content.\nYou can write CSS in a separate file or inside HTML.\nA CSS rule targets HTML elements and applies styles.\nCSS improves website appearance and consistency.\nIt is supported by all major browsers.\nInline, internal, and external stylesheets are the three main ways to use CSS.\nExternal CSS is best for larger projects.',
'<style>\np { color: blue; font-size: 18px; }\n</style>\n<p>This is styled with CSS</p>', 1),

('css', 'CSS Syntax',
'CSS syntax consists of a selector and a declaration block.\nThe selector chooses the HTML element to style.\nThe declaration block contains one or more property-value pairs.\nEach property specifies a style feature like color or font-size.\nA colon separates properties and values.\nA semicolon ends each declaration.\nCurly braces hold the declarations.\nWhitespace and indentation improve readability.\nComments can be added with /* comment */.\nProper syntax ensures your styles work as intended.',
'<style>\nbody { background-color: lightgray; color: black; }\n</style>\n<p>The page background is light gray.</p>', 2),

('css', 'CSS Selectors',
'Selectors define which HTML elements are affected by a style.\nThe universal selector (*) targets all elements.\nElement selectors target by tag name.\nClass selectors use a dot (.) followed by the class name.\nID selectors use a hash (#) followed by the ID.\nGrouping selectors apply the same style to multiple elements.\nAttribute selectors style elements based on attributes.\nPseudo-classes style elements in certain states.\nCombining selectors makes more specific rules.\nSelectors are the foundation of CSS targeting.',
'<style>\n.highlight { color: red; font-weight: bold; }\n</style>\n<p class="highlight">This text is red and bold.</p>', 3),

('css', 'CSS Colors',
'CSS colors style text, backgrounds, and borders.\nYou can use named colors like red or blue.\nHexadecimal values define exact shades.\nRGB values define colors using red, green, blue channels.\nRGBA adds transparency.\nHSL uses hue, saturation, and lightness.\nColors can be applied to any element.\nTransparent and semi-transparent colors are possible.\nConsistent colors improve readability.\nUse color contrast for accessibility.',
'<style>\nh1 { color: #ff6600; }\n</style>\n<h1>CSS Colors Example</h1>', 4),

('css', 'CSS Backgrounds',
'CSS backgrounds can be solid colors or images.\nbackground-color sets the background color.\nbackground-image sets an image as background.\nbackground-repeat controls if the image repeats.\nbackground-size changes the image size.\nbackground-position positions the image.\nbackground-attachment can fix the image during scroll.\nYou can layer multiple backgrounds.\nBackgrounds can be applied to any visible element.\nThey enhance design and style.',
'<style>\ndiv { background-color: yellow; padding: 10px; }\n</style>\n<div>This div has a yellow background.</div>', 5),

('css', 'CSS Borders',
'Borders surround elements and can be styled.\nUse border-width, border-style, and border-color.\nCommon styles include solid, dashed, dotted, and double.\nYou can apply borders to all sides or specific sides.\nRounded corners use border-radius.\nBorders can be combined with background styles.\nTransparent borders can create spacing effects.\nBorders work with any visible element.\nThey can highlight or separate content.\nBorder thickness affects emphasis.',
'<style>\np { border: 2px dashed green; padding: 5px; }\n</style>\n<p>This paragraph has a green dashed border.</p>', 6),

('css', 'CSS Margins',
'Margins create space outside an element\'s border.\nUse margin to set all sides at once.\nmargin-top, margin-right, margin-bottom, margin-left set sides individually.\nMargins can use px, %, em, or auto values.\nAuto margins are often used for centering.\nMargins can collapse between vertical elements.\nNegative margins pull elements closer.\nMargins do not affect the element\'s size.\nThey help space out page elements.\nGood margin use improves layout.',
'<style>\ndiv { margin: 20px; background: #eee; }\n</style>\n<div>This box has margins.</div>', 7),

('css', 'CSS Padding',
'Padding adds space inside an element\'s border.\nIt pushes content inward from the border.\nUse padding to set all sides at once.\npadding-top, padding-right, padding-bottom, padding-left set sides individually.\nPadding values can be px, %, em, or rem.\nPadding affects the total element size.\nBackgrounds extend into the padding area.\nPadding creates breathing space for text.\nToo much padding can waste space.\nUse padding for balanced design.',
'<style>\ndiv { padding: 15px; background: #eee; }\n</style>\n<div>This box has padding.</div>', 8),

('css', 'CSS Fonts',
'Fonts define the appearance of text.\nfont-family sets the typeface.\nMultiple fonts can be listed for fallback.\nfont-size controls text size.\nfont-style can be normal, italic, or oblique.\nfont-weight changes text thickness.\nWeb-safe fonts are supported on most devices.\nGoogle Fonts can add more variety.\nFonts impact readability and style.\nChoose fonts that match your design tone.',
'<style>\nh2 { font-family: Arial, sans-serif; font-weight: bold; }\n</style>\n<h2>This heading uses Arial bold.</h2>', 9),

('css', 'CSS Text',
'CSS can style text in many ways.\ntext-align controls horizontal alignment.\ntext-transform changes case.\ntext-decoration adds lines like underline.\nletter-spacing adjusts space between letters.\nword-spacing adjusts space between words.\nline-height changes vertical space between lines.\ncolor changes text color.\nText styles improve readability.\nUse text styles consistently.',
'<style>\np { text-align: center; text-transform: uppercase; }\n</style>\n<p>centered uppercase text</p>', 10),

('css', 'CSS Display',
'The display property defines how elements are shown.\nblock elements start on a new line and take full width.\ninline elements stay in the same line and take only needed width.\ninline-block elements are inline but allow height/width settings.\nnone hides the element completely.\nflex creates a flexible layout container.\ngrid creates a two-dimensional layout.\nChanging display can alter page structure.\nDisplay affects layout and positioning.\nIt is one of the most important CSS properties.',
'<style>\nspan { display: block; background: yellow; }\n</style>\n<span>Block element 1</span><span>Block element 2</span>', 11),

('css', 'CSS Positioning',
'Positioning controls how elements are placed.\nstatic is the default normal flow.\nrelative positions element relative to itself.\nabsolute positions element relative to nearest positioned ancestor.\nfixed keeps element in place during scroll.\nsticky switches between relative and fixed.\nTop, right, bottom, left set the offset.\nZ-index controls stacking order.\nPositioning enables creative layouts.\nMisuse can cause layout issues.',
'<style>\ndiv { position: relative; background: #ddd; padding: 10px; }\nspan { position: absolute; top: 10px; left: 20px; background: yellow; }\n</style>\n<div>Container<span>Absolute box</span></div>', 12),

('css', 'CSS Float',
'Float moves elements to the left or right.\nOther content flows around floated elements.\nclear stops content from wrapping around floats.\nFloats are often used for images in text.\nThey can also create column layouts.\nFloat can be left, right, none, or inherit.\nOveruse of floats can break layouts.\nModern layouts often use flexbox instead.\nClearing floats is important for stability.\nFloat still has uses in specific cases.',
'<style>\nimg { float: left; margin-right: 10px; }\n</style>\n<img src="https://via.placeholder.com/50">This text wraps around the image.', 13),

('css', 'CSS Flexbox',
'Flexbox provides a flexible layout model.\nIt aligns items horizontally or vertically.\nUse display:flex on the container.\njustify-content controls horizontal alignment.\nalign-items controls vertical alignment.\nflex-wrap allows items to wrap onto new lines.\nflex-grow controls how much items expand.\nflex-shrink controls how items shrink.\nIt simplifies responsive design.\nFlexbox is widely used in modern web design.',
'<style>\n.box { display: flex; gap: 10px; }\n.box div { background: lightblue; padding: 10px; }\n</style>\n<div class="box"><div>1</div><div>2</div><div>3</div></div>', 14),

('css', 'CSS Grid',
'Grid is a two-dimensional layout system.\nUse display:grid on the container.\nDefine rows and columns with grid-template.\nGap sets space between items.\nGrid allows precise placement of items.\nYou can span items across multiple cells.\nGrid can create complex layouts easily.\nIt works well with media queries.\nGrid simplifies responsive design.\nIt is powerful but easy to learn.',
'<style>\n.grid { display: grid; grid-template-columns: auto auto; gap: 10px; }\n.grid div { background: lightgreen; padding: 10px; }\n</style>\n<div class="grid"><div>Box 1</div><div>Box 2</div><div>Box 3</div><div>Box 4</div></div>', 15),

('css', 'CSS Pseudo-classes',
'Pseudo-classes style elements in specific states.\n:hover applies when mouse is over an element.\n:focus applies when element is focused.\n:first-child targets the first child element.\n:last-child targets the last child element.\n:nth-child targets specific children.\n:checked applies to checked inputs.\nThey make interactive styles without JavaScript.\nPseudo-classes enhance usability.\nThey work with most modern browsers.',
'<style>\na:hover { color: green; }\n</style>\n<a href="#">Hover over this link</a>', 16),

('css', 'CSS Pseudo-elements',
'Pseudo-elements style specific parts of elements.\n::before inserts content before an element.\n::after inserts content after an element.\n::first-line styles only the first line of text.\n::first-letter styles only the first letter.\nThey can add decorative elements.\nThey don\'t need extra HTML.\nContent in pseudo-elements is not selectable by default.\nThey are useful for icons and labels.\nThey make designs cleaner.',
'<style>\np::first-line { font-weight: bold; color: blue; }\n</style>\n<p>This is a paragraph with the first line styled differently for emphasis.</p>', 17),

('css', 'CSS Transitions',
'Transitions animate property changes smoothly.\nUse transition-property to choose what changes.\ntransition-duration sets how long it takes.\ntransition-timing-function controls speed curve.\nMultiple properties can be transitioned.\nHover effects often use transitions.\nThey make interactions more engaging.\nTransitions can be combined with transforms.\nShort durations feel more responsive.\nOveruse can slow performance.',
'<style>\ndiv { background: lightblue; transition: background 0.3s; padding: 10px; }\ndiv:hover { background: red; }\n</style>\n<div>Hover me</div>', 18),

('css', 'CSS Animations',
'Animations use @keyframes to define changes.\nanimation-name links to the keyframes.\nanimation-duration sets the length.\nanimation-iteration-count sets repeats.\nanimation-direction can reverse or alternate.\nYou can animate multiple properties.\nAnimations can loop infinitely.\nThey work without JavaScript.\nThey add dynamic effects to pages.\nToo many animations can be distracting.',
'<style>\n@keyframes fade { from { opacity: 0; } to { opacity: 1; } }\ndiv { animation: fade 2s; background: lightpink; padding: 10px; }\n</style>\n<div>Hello World</div>', 19),

('css', 'CSS Media Queries',
'Media queries create responsive designs.\nThey apply styles based on device size.\nUse @media with conditions like max-width.\nYou can change layouts for mobile or desktop.\nThey improve usability on all devices.\nMultiple queries can be used in one stylesheet.\nCommon breakpoints are 600px, 768px, 1024px.\nThey can target orientation and resolution.\nResponsive design is essential today.\nMedia queries work with all modern browsers.',
'<style>\n@media (max-width: 600px) { body { background: lightblue; } }\n</style>\n<p>Resize the window to see background change.</p>', 20);


-- Assumes `topics` table exists with: language, topic_name, content, code, topic_order

INSERT INTO topics (language, topic_name, content, code, topic_order) VALUES

-- Topics 1–10 (already inserted)

-- Topics 11–20:
('python', 'Python Introduction',
'Python is a popular, interpreted, high-level programming language.\nIt is used for web development, automation, data science, and more.\nPython emphasizes code readability.\nIt supports multiple programming paradigms.\nIt was created by Guido van Rossum.\nPython is dynamically typed and garbage-collected.\nIt uses indentation to define blocks.\nIts standard library is vast and powerful.\nPython runs on all major operating systems.\nIt is beginner-friendly and widely taught.',
'print("Hello, Python!")', 1),

('python', 'Python Syntax',
'Python syntax is simple and clean.\nIt does not use curly braces to define blocks.\nInstead, indentation is used.\nSemicolons are optional.\nStatements typically end with a new line.\nFunctions use the def keyword.\nComments start with #.\nWhitespace is important.\nIndentation errors are common for beginners.\nCode blocks must be consistently indented.',
'def greet():\n    print("Hi!")\ngreet()', 2),

('python', 'Python Variables',
'Variables store data.\nThey are created automatically when assigned a value.\nNo declaration is needed.\nThey are dynamically typed.\nYou can change variable types at runtime.\nVariable names are case-sensitive.\nUse snake_case naming convention.\nVariables can store any data type.\nUse type() to inspect type.\nAvoid using Python keywords as variable names.',
'name = "Alice"\nage = 25\nprint(name, age)', 3),

('python', 'Python Data Types',
'Python has many built-in types.\nCommon types include int, float, str, bool, list.\nIt also includes tuple, set, and dict.\nUse type() to get type of value.\nStrings are enclosed in quotes.\nBooleans are True and False.\nLists are ordered and mutable.\nTuples are ordered and immutable.\nDictionaries are key-value mappings.\nSets are unordered and have unique elements.',
'x = 3.14\ny = True\nprint(type(x), type(y))', 4),

('python', 'Python If Statements',
'Used to perform conditional logic.\nStart with if, optionally use elif and else.\nBlocks must be indented.\nConditions use comparison operators.\nEnd condition lines with colon.\nBoolean expressions evaluate to True or False.\nYou can nest if statements.\nIndentation determines block scope.\nAvoid writing multiple conditions on one line.\nLogical operators can combine conditions.',
'x = 5\nif x > 0:\n    print("Positive")\nelse:\n    print("Non-positive")', 5),

('python', 'Python Loops',
'Python supports for and while loops.\nUse for to iterate over sequences.\nUse range() for numeric loops.\nWhile loops repeat while a condition is true.\nUse break to exit loop early.\nUse continue to skip current iteration.\nLoops can have else clause.\nBe careful with infinite loops.\nIterate over strings, lists, dicts, etc.\nUse indentation to define loop body.',
'for i in range(3):\n    print(i)', 6),

('python', 'Python Functions',
'Functions are defined using def.\nThey can accept parameters.\nUse return to output a result.\nFunctions can return multiple values.\nDefault arguments are supported.\nKeyword arguments improve clarity.\nDocstrings describe function purpose.\nFunctions can be nested.\nPython supports first-class functions.\nUse functions to organize code.',
'def add(a, b):\n    return a + b\nprint(add(2, 3))', 7),

('python', 'Python Lists',
'Lists are ordered and mutable.\nUse square brackets to define.\nCan store mixed data types.\nSupport indexing and slicing.\nUse append(), insert(), remove().\nUse len() to get list length.\nLists can be nested.\nIterate using for loops.\nSupports list comprehension.\nCommon data structure in Python.',
'numbers = [1, 2, 3]\nnumbers.append(4)\nprint(numbers)', 8),

('python', 'Python Tuples',
'Tuples are like lists but immutable.\nCreated with parentheses.\nAccess using index.\nTuples can store multiple items.\nUseful for fixed collections.\nCan be nested.\nUsed for returning multiple values.\nSupports unpacking.\nImmutable means no changes allowed.\nTuple syntax: (item1, item2)',
'point = (10, 20)\nprint(point[0])', 9),

('python', 'Python Sets',
'Sets are unordered collections.\nAll elements must be unique.\nUse set() or curly braces.\nCannot access by index.\nSupports add(), remove(), update().\nUse in to check membership.\nSupports union, intersection, difference.\nUseful for removing duplicates.\nFast membership testing.\nSet comprehension is also supported.',
's = {1, 2, 3}\ns.add(4)\nprint(s)', 10);

INSERT INTO topics (language, topic_name, content, code, topic_order) VALUES

('python', 'Python Dictionaries',
'Dictionaries are key-value mappings.\nCreated using curly braces or dict().\nKeys must be unique and immutable.\nValues can be any type.\nAccess values using keys.\nUse methods like get(), keys(), values().\nCan be nested.\nUsed in JSON and APIs.\nVery flexible and efficient.\nExample: {"name": "Alice", "age": 20}',
'student = {"name": "Tom", "age": 21}"\nprint(student["name"])', 11),

('python', 'Python Strings',
'Python strings are immutable.\nEnclosed in single or double quotes.\nMultiline with triple quotes.\nSupport indexing and slicing.\nUseful methods: lower(), upper(), split(), join().\nCan use format() and f-strings.\nEscape sequences like \n, \t supported.\nStrings are iterable.\nCan check substring with in.\nPowerful string formatting tools.',
'text = "Python"\nprint(text.upper())', 12),

('python', 'Python Operators',
'Operators include arithmetic (+, -, *), comparison (==, !=), and logical (and, or, not).\nAlso includes bitwise, assignment, membership, identity.\nUsed to perform operations on variables and values.\nSupports operator precedence.\nUsed in conditions and expressions.\nCan combine multiple operators.\nSupports chained conditions.\nShort-circuiting used in logical ops.\nUseful in math-heavy logic.\nEssential for writing conditions.',
'x = 5\ny = 3\nprint(x + y > 6)', 13),

('python', 'Python Input',
'Use input() to take input from user.\nAlways returns a string.\nUse int(), float() to convert input.\nUseful for interactive scripts.\nPrompt text inside input().\nCan use in loops.\nEscape and validate inputs.\nBest practice: wrap with try/except.\nHelps test user-driven logic.\nCombine with print() for dialogs.',
'name = input("Enter name: ")\nprint("Hello", name)', 14),

('python', 'Python File Handling',
'Use open() to read or write files.\nModes include r, w, a, r+.\nUse read(), readline(), write().\nAlways close files with close() or use with block.\nwith open() is recommended.\nFiles can be read line by line.\nwrite() creates or overwrites.\nFiles are stored in string format.\nCan handle text and binary files.\nGood for data persistence.',
'f = open("demo.txt", "w")\nf.write("Hello File")\nf.close()', 15),

('python', 'Python Exception Handling',
'Python uses try-except blocks for error handling.\nCatch specific exceptions.\nUse finally to run always.\nRaise exceptions with raise.\nException chaining supported.\nMultiple except blocks allowed.\nAvoid catching generic Exception.\nUse else after try if no error.\nHelps write robust code.\nEssential for production apps.',
'try:\n    x = 1 / 0\nexcept ZeroDivisionError:\n    print("Cannot divide by zero")', 16),

('python', 'Python Classes',
'Classes are blueprints for objects.\nUse class keyword.\n__init__() is the constructor.\nself refers to the instance.\nAttributes and methods defined inside.\nCan use inheritance.\nEncapsulation and polymorphism supported.\nUse dot notation to access members.\nHelps structure large programs.\nKey to OOP in Python.',
'class Person:\n    def __init__(self, name):\n        self.name = name\n\np = Person("Alice")\nprint(p.name)', 17),

('python', 'Python Modules',
'Use import to include code from other files.\nBuilt-in modules like math, datetime.\nCustom modules use .py files.\nfrom ... import for specific items.\nModules can be aliased.\nUse dir() to list module contents.\nOrganizes reusable code.\nSupports packages and namespaces.\nGreat for modular design.\nHelps avoid code duplication.',
'import math\nprint(math.sqrt(16))', 18),

('python', 'Python Lambda Functions',
'Lambda creates anonymous functions.\nUse for short, single-expression functions.\nCommon in functional programming.\nCan pass as arguments.\nSyntax: lambda args: expression.\nLimited to single expression.\nOften used with map(), filter().\nUseful for inline operations.\nShould not replace regular functions.\nKeep simple and readable.',
'square = lambda x: x ** 2\nprint(square(4))', 19),

('python', 'Python Iterators and Generators',
'Iterators use iter() and next().\nGenerators yield values lazily.\nMemory-efficient for large data.\nDefine using yield inside functions.\nUse in for loops.\nSupports generator expressions.\nCan create infinite sequences.\nStops with StopIteration.\nAllows pause/resume execution.\nGreat for streaming data.',
'def gen():\n    yield 1\n    yield 2\nfor val in gen():\n    print(val)', 20);





-- ✅ C Topics
-- Insert 20 C Topics
INSERT INTO topics (language, topic_name, content, code, topic_order) VALUES
('c', 'C Introduction',
'C is a powerful procedural language used for system software.\nIt compiles code into machine-level instructions.\nC has a simple syntax and is widely taught in programming courses.\nIt supports functions, control structures, and memory manipulation.\nA C program starts with main().',
'#include <stdio.h>\nint main() {\n  printf("Hello, World!\\n");\n  return 0;\n}', 1),

('c', 'C Syntax',
'C syntax is based on blocks enclosed in curly braces.\nStatements end with semicolons.\nThe main function is the entry point.\nVariables must be declared with types.\nComments use // or /* */.',
'#include <stdio.h>\nint main() {\n  int x = 10;\n  printf("%d", x);\n  return 0;\n}', 2),

('c', 'C Variables',
'Variables store data and must be declared with types.\nC supports int, float, char, etc.\nUse meaningful names for variables.\nInitialization can happen during declaration.\nVariables are case-sensitive.',
'#include <stdio.h>\nint main() {\n  int age = 20;\n  printf("%d", age);\n  return 0;\n}', 3),

('c', 'C Data Types',
'C supports int, float, double, char, and void.\nUse sizeof() to check memory size.\nChoose data type based on required precision.\nInteger and float types differ in decimal support.\nchar is used for characters.',
'#include <stdio.h>\nint main() {\n  float pi = 3.14;\n  printf("%f", pi);\n  return 0;\n}', 4),

('c', 'C Constants',
'Constants don’t change during execution.\nUse #define or const keyword.\nConstants help improve readability and maintainability.\nYou cannot assign to const variables after declaration.',
'#include <stdio.h>\n#define PI 3.14\nint main() {\n  printf("%f", PI);\n  return 0;\n}', 5),

('c', 'C Operators',
'C includes arithmetic, logical, relational, assignment, bitwise operators.\nOperators are used to manipulate variables and values.\nUse () to enforce precedence.\nShort-circuit logic applies to && and ||.',
'#include <stdio.h>\nint main() {\n  int a = 5, b = 2;\n  printf("%d", a + b);\n  return 0;\n}', 6),

('c', 'C If Else',
'if-else lets you execute blocks based on conditions.\nUse relational operators to form conditions.\nCurly braces define blocks.\nOptional else if handles multiple conditions.',
'#include <stdio.h>\nint main() {\n  int age = 18;\n  if (age >= 18) printf("Adult");\n  else printf("Minor");\n  return 0;\n}', 7),

('c', 'C Switch',
'Switch evaluates one expression and matches cases.\nEach case must end with break.\ndefault handles unmatched cases.\nIt’s an alternative to long if-else chains.',
'#include <stdio.h>\nint main() {\n  int day = 3;\n  switch(day) {\n    case 1: printf("Mon"); break;\n    case 3: printf("Wed"); break;\n    default: printf("Unknown");\n  }\n  return 0;\n}', 8),

('c', 'C Loops',
'C supports for, while, and do-while loops.\nfor is used when count is known.\nwhile and do-while are condition-based.\nAlways use a condition to avoid infinite loops.',
'#include <stdio.h>\nint main() {\n  for(int i = 0; i < 5; i++) {\n    printf("%d\\n", i);\n  }\n  return 0;\n}', 9),

('c', 'C Functions',
'Functions group reusable logic.\nYou define with return type, name, and parameters.\nUse void if no return.\nParameters are passed by value.\nCall functions using their name and arguments.',
'#include <stdio.h>\nvoid greet() {\n  printf("Hello!\\n");\n}\nint main() {\n  greet();\n  return 0;\n}', 10),

('c', 'C Arrays',
'Arrays store multiple values of the same type.\nThey are zero-indexed.\nSize must be defined or inferred.\nElements can be accessed using array[index].',
'#include <stdio.h>\nint main() {\n  int a[] = {1, 2, 3};\n  printf("%d", a[1]);\n  return 0;\n}', 11),

('c', 'C Strings',
'Strings are character arrays ending with \\0.\nUse %s in printf to print strings.\nUse strcpy, strlen from string.h.\nAlways reserve space for null character.',
'#include <stdio.h>\nint main() {\n  char name[] = "C Lang";\n  printf("%s", name);\n  return 0;\n}', 12),

('c', 'C Pointers',
'Pointers hold memory addresses.\nUse * to dereference and & to get address.\nUseful for dynamic memory and functions.\nBe careful of null and uninitialized pointers.',
'#include <stdio.h>\nint main() {\n  int x = 10;\n  int *p = &x;\n  printf("%d", *p);\n  return 0;\n}', 13),

('c', 'C Structures',
'Structures allow grouping of variables.\nUse struct keyword.\nCan hold multiple data types.\nAccess with dot notation.',
'#include <stdio.h>\nstruct Person {\n  int age;\n};\nint main() {\n  struct Person p = {30};\n  printf("%d", p.age);\n  return 0;\n}', 14),

('c', 'C Unions',
'Unions share memory between members.\nOnly one member is valid at a time.\nDeclared using union keyword.\nUse when memory is critical.',
'#include <stdio.h>\nunion Data {\n  int i;\n  float f;\n};\nint main() {\n  union Data d;\n  d.i = 5;\n  printf("%d", d.i);\n  return 0;\n}', 15),

('c', 'C Enums',
'Enums define named constants.\nBy default, values start at 0.\nGood for better code readability.\nUse enum keyword to define.',
'#include <stdio.h>\nenum week {Mon, Tue, Wed};\nint main() {\n  enum week today = Tue;\n  printf("%d", today);\n  return 0;\n}', 16),

('c', 'C File I/O',
'Use fopen(), fprintf(), fscanf() to work with files.\nAlways close files with fclose().\nModes: r, w, a, r+, etc.',
'#include <stdio.h>\nint main() {\n  FILE *f = fopen("file.txt", "w");\n  fprintf(f, "Hello");\n  fclose(f);\n  return 0;\n}', 17),

('c', 'C Memory Allocation',
'Use malloc, calloc, realloc, and free from stdlib.h.\nAlways free memory after use.\nAvoid memory leaks.',
'#include <stdio.h>\n#include <stdlib.h>\nint main() {\n  int *p = malloc(sizeof(int));\n  *p = 5;\n  printf("%d", *p);\n  free(p);\n  return 0;\n}', 18),

('c', 'C Recursion',
'Recursion is when a function calls itself.\nAlways provide a base condition.\nUse stack memory, so be careful of depth.',
'#include <stdio.h>\nint fact(int n) {\n  if (n <= 1) return 1;\n  return n * fact(n - 1);\n}\nint main() {\n  printf("%d", fact(5));\n  return 0;\n}', 19),

('c', 'C Preprocessor',
'Preprocessor handles macros, includes, conditionals.\nStarts with # symbol.\nUsed for header files and constants.',
'#include <stdio.h>\n#define PI 3.14\nint main() {\n  printf("%f", PI);\n  return 0;\n}', 20);



INSERT INTO topics (language, topic_name, content, code, topic_order) VALUES
('java', ' Introduction', 'Java is a popular object-oriented language.\nRuns on the JVM.\nUsed in web, mobile, and enterprise apps.\nCode written in .java files.\nCompiled to bytecode.', 'public class Main {\n  public static void main(String[] args) {\n    System.out.println("Hello Java");\n  }\n}', 1),
('java', 'Variables', 'Variables must be declared with type.\nUse int, double, boolean, String.\nCamelCase naming convention.\nUse final for constants.\nVariables can be local or global.', 'public class Main {\n  public static void main(String[] args) {\n    int age = 25;\n    String name = "Alice";\n    System.out.println(name + " is " + age);\n  }\n}', 2),
('java', 'Data Types', 'Java has primitive types: int, float, char, boolean.\nAlso non-primitive: String, Arrays, Objects.\nType safety prevents errors.\nUse type casting to convert.\nStrongly typed language.', 'public class Main {\n  public static void main(String[] args) {\n    int x = 5;\n    double y = x;\n    System.out.println(y);\n  }\n}', 3),
('java', 'Operators', 'Java supports arithmetic, relational, logical, bitwise.\nOperators work with variables and values.\n== checks equality.\n&& is logical AND.\nUse parentheses for precedence.', 'public class Main {\n  public static void main(String[] args) {\n    int a = 5, b = 10;\n    System.out.println(a + b);\n    System.out.println(a < b);\n  }\n}', 4),
('java', 'Java If Else', 'Use if-else to handle decisions.\nCondition inside parentheses.\nBlocks defined using braces.\nUse else if for multiple checks.\nSupports nested conditions.', 'public class Main {\n  public static void main(String[] args) {\n    int x = 20;\n    if (x > 10) {\n      System.out.println("Big");\n    } else {\n      System.out.println("Small");\n    }\n  }\n}', 5),
('java', 'Switch', 'Switch checks a variable against multiple values.\nEach case must end with break.\ndefault block is optional.\nUseful for fixed choices.\nWorks with int, char, String.', 'public class Main {\n  public static void main(String[] args) {\n    int day = 2;\n    switch(day) {\n      case 1: System.out.println("Sun"); break;\n      case 2: System.out.println("Mon"); break;\n      default: System.out.println("Other");\n    }\n  }\n}', 6),
('java', 'Loops', 'Java supports for, while, do-while.\nfor loop is most used for iteration.\nwhile checks condition before loop.\ndo-while runs at least once.\nbreak and continue control flow.', 'public class Main {\n  public static void main(String[] args) {\n    for (int i = 0; i < 3; i++) {\n      System.out.println(i);\n    }\n  }\n}', 7),
('java', 'Arrays', 'Arrays store multiple values in one variable.\nFixed size, indexed from 0.\nUse loops to iterate.\nSupports multi-dimensional arrays.\nDeclared with [] brackets.', 'public class Main {\n  public static void main(String[] args) {\n    int[] nums = {1, 2, 3};\n    for (int n : nums) {\n      System.out.println(n);\n    }\n  }\n}', 8),
('java', 'Strings', 'Strings are objects for text.\nUse "" to declare.\nString methods: length(), toUpperCase(), equals().\nImmutable in nature.\nConcatenate with + operator.', 'public class Main {\n  public static void main(String[] args) {\n    String s = "Java";\n    System.out.println(s.toUpperCase());\n  }\n}', 9),
('java', 'Methods', 'Methods group reusable code.\nUse static for class-level methods.\nCan return a value.\nPass parameters inside parentheses.\nSupports overloading.', 'public class Main {\n  static void greet(String name) {\n    System.out.println("Hello " + name);\n  }\n  public static void main(String[] args) {\n    greet("Bob");\n  }\n}', 10),
('java', 'Classes and Objects', 'Class is a blueprint for objects.\nObject holds data (fields) and actions (methods).\nUse new keyword to create object.\nSupports encapsulation.\nEach class in its own file.', 'class Dog {\n  void bark() {\n    System.out.println("Woof");\n  }\n}\npublic class Main {\n  public static void main(String[] args) {\n    Dog d = new Dog();\n    d.bark();\n  }\n}', 11),
('java', 'Inheritance', 'One class can inherit another.\nUse extends keyword.\nChild class gets parent methods.\nSupports method overriding.\nFollows is-a relationship.', 'class Animal {\n  void eat() { System.out.println("Eating"); }\n}\nclass Dog extends Animal {}\npublic class Main {\n  public static void main(String[] args) {\n    new Dog().eat();\n  }\n}', 12),
('java', 'Encapsulation', 'Keep fields private, access via getters/setters.\nImproves security.\nControls how values are changed.\nData hiding principle.\nOne of the OOP pillars.', 'class Person {\n  private int age;\n  public void setAge(int a) { age = a; }\n  public int getAge() { return age; }\n}\npublic class Main {\n  public static void main(String[] args) {\n    Person p = new Person();\n    p.setAge(30);\n    System.out.println(p.getAge());\n  }\n}', 13),
('java', 'Polymorphism', 'Same method name, different behaviors.\nCompile-time (overloading) and runtime (overriding).\nEnhances flexibility.\nKey part of OOP.\nUses inheritance.', 'class Animal {\n  void sound() { System.out.println("Animal"); }\n}\nclass Dog extends Animal {\n  void sound() { System.out.println("Bark"); }\n}\npublic class Main {\n  public static void main(String[] args) {\n    Animal a = new Dog();\n    a.sound();\n  }\n}', 14),
('java', 'Abstraction', 'Hide implementation, show only features.\nUse abstract class or interface.\nCan''t instantiate abstract class.\nProvides a contract for subclasses.\nEncourages modular code.', 'abstract class Animal {\n  abstract void makeSound();\n}\nclass Dog extends Animal {\n  void makeSound() { System.out.println("Bark"); }\n}\npublic class Main {\n  public static void main(String[] args) {\n    new Dog().makeSound();\n  }\n}', 15),
('java', 'Interface', 'Interface has only abstract methods.\nImplemented by classes.\nSupports multiple inheritance.\nMethods are public & abstract by default.\nFields are public static final.', 'interface Animal {\n  void sound();\n}\nclass Dog implements Animal {\n  public void sound() {\n    System.out.println("Bark");\n  }\n}\npublic class Main {\n  public static void main(String[] args) {\n    new Dog().sound();\n  }\n}', 16),
('java', 'Exception Handling', 'Handles runtime errors.\nUse try-catch blocks.\nfinally always runs.\nthrow used to raise exceptions.\nChecked vs unchecked exceptions.', 'public class Main {\n  public static void main(String[] args) {\n    try {\n      int x = 5 / 0;\n    } catch (Exception e) {\n      System.out.println("Error");\n    }\n  }\n}', 17),
('java', 'Collections', 'Collections hold multiple elements.\nIncludes List, Set, Map.\nUse ArrayList for dynamic arrays.\nSupports generics.\nUtility methods in Collections class.', 'import java.util.*;\npublic class Main {\n  public static void main(String[] args) {\n    List<String> list = new ArrayList<>();\n    list.add("A");\n    System.out.println(list);\n  }\n}', 18),
('java', 'File Handling', 'Use File class to read/write files.\nNeed try-catch.\nCan check existence, read/write lines.\nUseful for data storage.\nAlso supports BufferedReader/Writer.', 'import java.io.*;\npublic class Main {\n  public static void main(String[] args) throws Exception {\n    File f = new File("test.txt");\n    System.out.println(f.exists());\n  }\n}', 19),
('java', 'Threads', 'Allows concurrent execution.\nUse Thread class or Runnable.\nstart() begins thread.\nsleep() pauses it.\nUseful for multitasking apps.', 'public class Main extends Thread {\n  public void run() {\n    System.out.println("Thread Running");\n  }\n  public static void main(String[] args) {\n    new Main().start();\n  }\n}', 20);

INSERT INTO topics (language, topic_name, content, code, topic_order) VALUES
('js', 'JavaScript Introduction',
'JavaScript is used to create interactive web pages.\nIt is executed in the browser, not on the server.\nCommonly used for DOM manipulation and event handling.\nCan change HTML and CSS on the fly.\nWorks alongside HTML and CSS.\nSupports object-oriented and functional programming.\nOften used for form validation.\nCan interact with APIs to fetch data.\nCan create animations and dynamic effects.\nPlays a key role in modern web development.',
'<script>\ndocument.write("Welcome to JavaScript!");\n</script>', 1),

('js', 'JavaScript Syntax',
'JavaScript syntax is the set of rules for writing code.\nStatements should end with a semicolon.\nCurly braces define code blocks.\nWhitespace is ignored but improves readability.\nComments start with // or /* */.\nVariables are declared using let, const, or var.\nCase-sensitive: myVar ≠ MyVar.\nFunctions are defined with the function keyword.\nUse parentheses for grouping and function calls.\nSyntax errors stop script execution.',
'<script>\nlet x = 5, y = 10;\ndocument.write("Sum: " + (x + y));\n</script>', 2),

('js', 'JavaScript Variables',
'Variables store data in memory.\nUse let for block-scoped variables.\nconst defines constants that can’t be reassigned.\nvar is function-scoped and older.\nVariable names must start with letters, $ or _.\nThey are case-sensitive.\nVariables can store strings, numbers, etc.\nUninitialized variables are undefined.\nUse typeof to check variable type.\nNaming variables clearly improves code readability.',
'<script>\nlet name = "Alice";\ndocument.write("Hello, " + name);\n</script>', 3),

('js', 'JavaScript Data Types',
'JavaScript has different types of data.\nPrimitive types include string, number, and boolean.\nSpecial types include null and undefined.\nObjects and arrays are complex types.\nUse typeof to check type.\nStrings are in quotes.\nNumbers can be integers or floats.\nBoolean values are true or false.\nData types are dynamic in JS.\nJavaScript is loosely typed.',
'<script>\nlet age = 25;\ndocument.write(typeof age);\n</script>', 4),

('js', 'JavaScript Operators',
'Operators perform operations on variables and values.\nArithmetic: +, -, *, /, %.\nAssignment: =, +=, -=.\nComparison: ==, ===, !=, !==.\nLogical: &&, ||, !.\nUse parentheses to group expressions.\n== allows type conversion, === does not.\nUse += to increment and assign.\nTernary: condition ? val1 : val2.\nOperators are essential for conditions and calculations.',
'<script>\nlet a = 4, b = 2;\ndocument.write("Product: " + (a * b));\n</script>', 5),

('js', 'JavaScript If Else',
'If statements run code based on a condition.\nUse else for alternate code.\nUse else if for multiple conditions.\nComparison operators check values.\nConditions return true or false.\nCode blocks use curly braces.\nLogical operators combine conditions.\nAvoid deeply nested ifs.\nCan be replaced with switch in some cases.\nTernary is shorthand for simple if-else.',
'<script>\nlet marks = 80;\nif(marks >= 50) { document.write("Pass"); } else { document.write("Fail"); }\n</script>', 6),

('js', 'JavaScript Switch',
'Switch tests a value against multiple cases.\nEach case should end with break.\nDefault runs if no match is found.\nFaster and cleaner than multiple ifs.\nSupports string and number comparison.\nCase-sensitive matching.\nAvoid fall-through by using break.\nOrganizes code with multiple outcomes.\nUse switch only for exact matches.\nCannot compare expressions.',
'<script>\nlet color = "blue";\nswitch(color) {\n  case "blue": document.write("Blue Color"); break;\n  default: document.write("Unknown");\n}\n</script>', 7),

('js', 'JavaScript Loops',
'Loops repeat code blocks.\nfor loop: definite number of iterations.\nwhile loop: checks condition before each iteration.\ndo-while: runs at least once.\nbreak exits loop early.\ncontinue skips to next iteration.\nUseful for arrays and counters.\nAvoid infinite loops.\nUse loop variables carefully.\nNesting loops increases complexity.',
'<script>\nfor(let i = 0; i < 3; i++) {\n  document.write(i + "<br>");\n}\n</script>', 8),

('js', 'JavaScript Functions',
'Functions group reusable code.\nDeclared using function keyword.\nCan accept parameters.\nMay return values using return.\nArrow functions are shorter.\nFunctions help reduce repetition.\nFunction calls run the code.\nUse descriptive function names.\nCan be stored in variables.\nJavaScript supports first-class functions.',
'<script>\nfunction greet(name) {\n  return "Hello " + name;\n}\ndocument.write(greet("Bob"));\n</script>', 9),

('js', 'JavaScript Arrays',
'Arrays store ordered lists.\nElements are accessed by index.\nIndex starts at 0.\nUse push() to add to end.\npop() removes last item.\nshift() removes first.\nunshift() adds to beginning.\nsplice() adds/removes items.\nlength gives size.\nLoop through arrays with for or forEach.',
'<script>\nlet fruits = ["apple", "banana"];\nfruits.push("orange");\ndocument.write(fruits);\n</script>', 10),

('js', 'JavaScript Objects',
'Objects store key-value pairs.\nProperties are accessed with dot or brackets.\nKeys are strings, values can be any type.\nCan nest objects and arrays.\nUseful for storing structured data.\nObjects are mutable.\nAdd or delete properties dynamically.\nUse for...in to loop through keys.\nMethods are functions in objects.\nJSON is based on JavaScript objects.',
'<script>\nlet person = {name: "Tom", age: 25};\ndocument.write(person.name);\n</script>', 11),

('js', 'JavaScript Events',
'Events respond to user actions.\nCommon events: click, mouseover, keydown.\nAdd listeners with addEventListener().\nHandlers run when event fires.\nInline event handlers use HTML.\nPrevent default actions with preventDefault().\nUse events to make interactive UIs.\nYou can remove listeners too.\nEvents can be attached to any HTML element.\nUseful for form validation and buttons.',
'<button onclick="document.write(\'Button Clicked!\')">Click Me</button>', 12),

('js', 'JavaScript DOM',
'DOM stands for Document Object Model.\nRepresents HTML as objects.\nUse getElementById() to select elements.\nquerySelector() supports CSS selectors.\nChange text with textContent or innerHTML.\nStyle elements using style property.\nAdd/remove elements dynamically.\nListen to events on DOM elements.\nDOM manipulation enables dynamic pages.\nEssential for client-side scripting.',
'<p id="demo">Old Text</p>\n<script>\ndocument.getElementById("demo").textContent = "New Text";\n</script>', 13),

('js', 'JavaScript String Methods',
'Strings are text data types.\nlength returns the number of characters.\ntoUpperCase() converts to capital.\nslice() extracts part of the string.\nreplace() changes content.\nsplit() converts to array.\ntrim() removes whitespace.\nconcat() joins strings.\nindexOf() finds position of substring.\nStrings are immutable.',
'<script>\nlet txt = "hello";\ndocument.write(txt.toUpperCase());\n</script>', 14),

('js', 'JavaScript Number Methods',
'JavaScript treats all numbers as float.\ntoFixed() formats decimals.\nparseInt() converts string to int.\nparseFloat() converts to float.\nNumber.isNaN() checks for NaN.\nMath.round() rounds numbers.\nMath.floor() rounds down.\nMath.ceil() rounds up.\nInfinity and -Infinity are special values.\n0.1 + 0.2 != 0.3 due to floating point issues.',
'<script>\nlet num = 5.678;\ndocument.write(num.toFixed(2));\n</script>', 15),

('js', 'JavaScript Date',
'Date objects handle time and date.\nUse new Date() to create a date.\ngetFullYear() returns year.\ngetMonth() returns 0-11.\ngetDate() gives day of month.\ngetHours(), getMinutes(), getSeconds() available.\nset methods also exist.\nDate.now() gives timestamp.\nCan be formatted with toDateString().\nUseful for clocks, logs, and expiry.',
'<script>\nlet d = new Date();\ndocument.write(d.getFullYear());\n</script>', 16),

('js', 'JavaScript Math',
'Math object provides numeric functions.\nMath.round() rounds numbers.\nMath.random() gives random between 0 and 1.\nMath.max() returns largest value.\nMath.min() returns smallest.\nMath.sqrt() gives square root.\nMath.pow() for exponents.\nMath.abs() gives absolute value.\nMath.floor() and ceil() round values.\nUseful for calculations and games.',
'<script>\ndocument.write(Math.max(10, 20));\n</script>', 17),

('js', 'JavaScript JSON',
'JSON = JavaScript Object Notation.\nUsed for data exchange.\nConsists of key-value pairs.\nUse JSON.stringify() to convert to string.\nUse JSON.parse() to convert to object.\nKeys must be in double quotes.\nNo functions allowed in JSON.\nData must follow strict format.\nCommon in APIs.\nEasy to send/receive structured data.',
'<script>\nlet obj = {name: "Sam"};\ndocument.write(JSON.stringify(obj));\n</script>', 18),

('js', 'JavaScript Error Handling',
'Use try...catch to handle errors.\ntry block runs code.\ncatch catches errors if any.\nfinally always runs.\nthrow creates custom errors.\nAvoid crashing apps with proper handling.\nUse meaningful error messages.\nHelps debug issues in runtime.\nNested try-catch is allowed.\nUseful in async operations too.',
'<script>\ntry {\n throw "Error occurred";\n} catch(e) {\n document.write(e);\n}\n</script>', 19),

('js', 'JavaScript Arrow Functions',
'Arrow functions are a shorthand for regular functions.\nUse => instead of function keyword.\nShorter and cleaner syntax.\nNo binding of this.\nUseful for array methods.\nCan omit return and braces for one-liners.\nNot suitable as constructors.\nSupports implicit return.\nCompact and preferred in modern JS.\nCannot use arguments object.',
'<script>\nconst sum = (a, b) => a + b;\ndocument.write(sum(3, 2));\n</script>', 20);
