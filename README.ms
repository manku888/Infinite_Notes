# Infinite_Note - Web Application

Infinite Note is a simple web application for managing and organizing your notes. 
This project is built using Java Servlets, JSP, and Hibernate for the backend, and it provides a user-friendly interface for adding, updating, and deleting notes.

## Features

- **Add Notes:** Users can add new notes with a title and content.
- **Show Notes:** View all notes with details such as title, content, and the date they were added.
- **Update Notes:** Edit and update existing notes with new information.
- **Delete Notes:** Remove unwanted notes from the system.
- **Search Notes:** Search for specific notes based on title or content.

## Technologies Used

- **Java Servlets:** Handling HTTP requests and responses.
--**Jdbc: (API) that allows Java programs to access DBMS.
- **Hibernate:** ORM framework for database interaction.
- **JSP (JavaServer Pages):** Front-end templates for dynamic content.
- **HTML, CSS, Bootstrap:** Styling and structuring the user interface.
- **MySQL Database:** Storing and retrieving note information.
- **Maven:** Dependency management.

## Getting Started

1. **Clone the repository:**
   ```
   git clone https://github.com/manku888/infinite-note.git
   ```

2. **Setup Database:**
   - Create a MySQL database and update the `hibernate.cfg.xml` file with your database credentials.
   - Execute the SQL scripts in the `database-scripts` folder to create the necessary tables.

3. **Configure Maven:**
   - Make sure you have Maven installed.
   - Run `mvn clean install` to download dependencies and build the project.

4. **Deploy to Servlet Container:**
   - Deploy the generated WAR file to a servlet container (e.g., Apache Tomcat).

5. **Access the Application:**
   - Open your web browser and go to `http://localhost:8080/infinite-note` (or the appropriate URL based on your configuration).

## Usage

- **Adding Notes:** Click on "Add Note" in the navigation bar, fill in the title and content, and click "Add."

- **Viewing All Notes:** Navigate to "Show Notes" to see a list of all added notes with details.

- **Updating Notes:** Click on "Update" for the note you want to edit, make changes, and click "Save."

- **Deleting Notes:** Click on "Delete" for the note you want to remove.

- **Searching Notes:** Use the search bar to find specific notes based on title or content.

## Contributing

Contributions are welcome! If you have any ideas for improvements, bug fixes, or new features, feel free to open an issue or submit a pull request.


---

Happy note-taking with Infinite_Note! 📝
