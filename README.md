PYTHON:
PYTHON:
https://www.youtube.com/watch?v=m67-bOpOoPU&t=27814s&pp=ygUVcHl0aG9uIHRhbWlsIHR1dG9yaWFs


Ml and DL:
https://www.youtube.com/@krishnaik06


https://www.youtube.com/watch?v=gmvvaobm7eQ&list=PLeo1K3hjS3uvCeTYTeyfe0-rN5r8zn9rw


Roboflow: (Video Analytics)
https://www.youtube.com/@Roboflow


https://www.youtube.com/@Ultralytics


Road Map For Ai Engineer


https://www.youtube.com/watch?v=T4MLrtOKPjY&pp=ygUdbWwgdHV0b3JpYWwgY29kZWJhc2lzIHJvYWRtYXA%3D

Our Community:
https://discord.gg/TUCgPX9FAG

(we are doing 250 days ai engineer challenge)



on GitHub, where we are going to host our application. Install the gh-pages dependency using npm :

npm install gh-pages --save-dev
Step 3. Adding the properties to the package.json file


The package.json file is been configured so that we can point the GitHub repository to where our react app is been deployed. The first property we have to add is at the top of the package.json file which will be given the name “homepage“, and the value for it will be in the following format:

"homepage": "https://<Username>.github.io/<Repository-name>"
Example: “homepage”: “https://vishalWaghmode.github.io/Textutil”

Then we will add “deploy” and “predeploy “properties in the script field with the following values:

"scripts":{
    "predeploy": "npm run build",
    "deploy": "gh-pages -d build" 
}   

 

Step 4. Pushing the code updates to the GitHub repository and finally deploying the application

For pushing the updates which we have done in the code we can use the following commands:

git add .
git commit -m "commit"
git push
And now finally deploy the application using the following command in the terminal:

npm run deploy
This command will publish your application on the branch named gh-pages and can be opened by the link given in the homepage property written in the package.json file.

Step 5. View the deployed app on GitHub

Now, to view the link for opening the application we will go on the GitHub and click on Settings then at the left of the settings we can see the code and automation where the pages field will be present, just clicking it we will get the following interface where the link will be provided.


Note: If the link does not come then just wait for 2-3 minutes and then again refresh the browser and then click on the link again on it.

