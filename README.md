# ![image](https://raw.githubusercontent.com/a-dhami/gutka/main/data/AppIcons/29.png) Gutka Sahib

## Native iOS Application developed in Swift and SwiftUI
### Prerelease Version

A simple "gutka" (religious text) application that makes use of a SQL database to display various
"banis" that a Sikh disiciple would recite every day. 

Development of this application was done primarily on XCode using Swift and SwiftUI.

The SQLite.swift framework was used to interface with the SQL database that was created.

The application logo/icon was created using Photoshop.

The following is a overview of how the application was implemented.

A database was created using a local SQL instance and populated with the following specifications.

A table called "paragraphs" that contains all of the paragraphs of the various "banis".
A data scheme consisting of:
<ul>
      <li>id            : numeric (a unique identifier of each paragraph)</li>
      <li>article id    : numeric (a identifier of the "bani" that the paragraph belongs to)</li>
      <li>paragraph_id  : numeric (a unique identifier of the paragraph in the particular bani)</li>
      <li>txt_roman     : string  (a string consisting of the paragraph in a Roman Transliteration)</li>
      <li>txt_gurmukhi  : string  (a unicode-gurmukhi string consisting of the paragraph in it's original Gurmukhi form)</li>
      <li>txt_hindi     : string  (a unicode-devanagari string consisting of the paragraph in a Hindi Transliteration)</li>
      <li>style         : int     (a integer representing the style that the paragraph should take. etc: heading, normal, sub-heading)</li>
      </ul>
      
The data was populated for the various "banis" included in the application.
The paragraphs for each bani is obtained by using SQL queries and selecting all rows for the appropriate "article_id" which is the id of the "bani"

The Paragraph model and SQLHelper are used for creating paragraph objects from the results obtained from the SQL queries.

The resulting array of Paragraph objects is then displayed and styled by "ContentView".

JSON is used to maintain a list of various banis and their appropriate article_id along with the appropriate names in Roman-English and Hindi.

JSON was used instead of SQL just to gain familiarity with different types of methods of storing data.

The JSON data is stored in /data/articlesData.json and DataParser.swift is used to create the array of Article objects.

ArticleView.swift is used to display the list of various "Banis' in the application and is structurally similar to ContentView.swift

SettingsView.swift allows the user to toggle the different transliterations and also change the color of the text and the size.
It also allows the user to toggle Dark Mode.


The intital version of the project has been completed however there are many more features that have to be implemented and will be in future versions.

-Akash Dhami



