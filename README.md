# Library


Library server created by Vapor and Swift.

## Roadmap

- [ ] Implement App
  - [x] Implemented Author and book endpoints.
  - [ ] Implement real DB instead of fake data.
- [ ] Client
  - [ ] Create a client for it.
- [ ] usage
  - [ ] run with Docker.


## endpoints:

  ```bash
  /book/:id
  /book/all
  /image/img.jpg
  /author/:id
  /author/books/:id
  ```

## How to run
Download the zip file open the folder with Xcode and wait until complete to fetch all required SPM.
Configure the custom working directory by following below link (Vapor document):

https://docs.vapor.codes/getting-started/xcode/


### How to Contribute

Thank you for considering contributing to our project! To get started, follow these steps:

1. **Fork the Repository**: Click the "Fork" button on the top right corner of the repository's page on GitHub. This will create a copy of the repository in your own GitHub account.
2. **Clone the Repository**: Clone your forked repository to your local machine using the following command:

   ```bash
   git clone https://github.com/helloItsHEssam/libraryServer.git
3. **Create a New Branch**: Create a new branch for your work. Be sure to give it a descriptive using following command:

    ```bash
    git checkout -b feature/your-feature-name
4. **Make Changes**: Make your desired changes to the codebas
5. **Test Your Changes**: If applicable, test your changes to ensure they work as expected.
6. **Commit Your Changes**: Commit your changes with a descriptive commit message using following command:

    ```bash
    git commit -m "Add feature: your-feature-name"
7. **Push Your Changes**: Push your changes to your forked repository on GitHub using following commnad:

    ```bash
    git push origin feature/your-feature-name
8. **Create a Pull Request**: Go to your forked repository on GitHub and click the "New Pull Request" button. Describe your changes in the pull request and submit it.
9. **Review and Collaborate**: Collaborate with project maintainers to review and refine your changes. Be responsive to feedback.
10. **Celebrate**: Your contribution has been merged! Thank you for your valuable contribution to the project.

## License

Please check [LICENSE](LICENSE) for details.