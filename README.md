# Jupyter Docker Environment

1. Install Docker and start the Docker service.
2. Add Python packages you need to the requirements.txt file.
3. Place your notebooks in the `notebooks` directory.`
4. Run `make run` to build and run the Jupyter container.
5. Click on the link in console to open the Jupyter server in your browser.

If you need to add new packages to the environment, add them to the requirements.txt file and re-run `make run`.

This should solve all of your many issues with Jupyter and Docker.
