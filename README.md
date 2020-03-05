<p align="center">
 <a href="https://github.com/chinomnsoawazie/station-locate-frontend">
 <img width="30%" src="https://github.com/chinomnsoawazie/find-job-frontend/blob/master/find_job_frontend/src/pictures/logo.png" style="max-width:50%;">
 </a>
</p>


<p align="center"> <img src="https://img.shields.io/badge/-Technologies%20Used-blue" style="max-width:50%;"> </p>

<p align="center">
  <img src="https://img.shields.io/badge/CSS-3.0-blue" style="max-width:50%;">  
  <img src="https://img.shields.io/badge/HTML-5.2-green" style="max-width:50%;">
  <img src="https://img.shields.io/badge/JavaScript-1.8.5-blue" style="max-width:50%;">
  <img src="https://img.shields.io/badge/ReactJS-16.12.0-yellowgreen" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Redux-4.0.5-brightgreen" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Redux%20Thunk-2.3.0-yellowgreen" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Google%20Maps%20API-lightgrey" style="max-width:50%;">
  <img src="https://img.shields.io/badge/axios-0.19.1-red" style="max-width:50%;">
 </p>
  
 <p align="center"> <img src="https://img.shields.io/badge/-Notices-blue" style="max-width:50%;"> </p>

 <p align="center"> 
    <a target="_blank" rel="noopener noreferrer" href="https://github.com/chinomnsoawazie/find-job-backend">
      <img src="https://img.shields.io/badge/Backend%20Repository-Click%20here-green" style="max-width:50%;">
    </a>
   <img src="https://img.shields.io/badge/Status-Work%20in%20progress%20-brightgreen" style="max-width:50%;">
 </p>
 
 
  
  <h1>
  <a id="table-of-contents" class="anchor" href="#contents">  </a>
  Table of Contents
  </h1>
  
  <ul>
    <li><a href="#inspiration">Inspiration</a></li>
    <li><a href="#introduction">Introduction</a>
      <ul>
        <li><a href="#overview">Basic overview</a></li>
        <li><a href="#features">Features</a></li>
        <li><a href="#goals">Goals</a></li>
        <li><a href="#challenge">Challenges</a></li>
      </ul>
    </li>
    <li><a href="#demo">Demo</a></li>  
    <li><a href="#installation">Installation</a>
      <ul>
          <li><a href="#prerequisites">Prerequisites</a></li>
          <li><a href="#backend-installation">Backend installation</a></li>
          <li><a href="#first-start">First start</a></li>
      </ul>
    </li>   
    <li><a href="#summary-of-files">Summary of files</a>
      <ul>
          <li><a href="#internal-file-structure">Internal file structure</a></li>
           <li><a href="#internal-dataset">Internal dataset</a></li>

      </ul>
    </li>
   <li><a href="#planned-improvements">Planned improvements</a></li>
   <li><a href="#contact">Contact</a></li>
   <li><a href="#credits">Credits</a></li>
 </ul>
  
  <h1 id="inspiration">Inspiration</h1>
  
 <p>The root inspiration for this app is project organisation. Job search is a project. As if job search is not hard enough, job searchers are thrown a platform by jobsearch engines that most times requires they have other apps to manage the job search project. It is not enough to just throw a note-taking capabilty that do not tie into individual jobs. The idea is to have a total but also fine-grained management of the job search process, automate certian tasks like a 'thank you' email being sent after a job interview with the option to not send it or modify the content, create tasks and notes for individual jobs, traack what has happened so far with jobs one is interested in and/or has applied to. The app aims to take some of the job search hassles off the shoulder of the job searcher and free up resources for other prodictive stuff like repolishing thier resume, learning new skills, etc. Also, heavy emphasis is placed on making finding jobst that Veterans are qualified much easier.</p>
  
 <a href=#table-of-contents> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
  
  <h1 id="introduction">Introduction</h1>
   <h2 id="overview">Basic Overview</h2>
    <p>User searches for relevant jobs, favorites and/or applies to them, track the progress and actions on each job.</p>
    
   <h2 id="features">Features</h2>
    <p>Features of the app include the following;
      <ul> 
       <li>User can create, edit, and delete an account</li>
       <li>User can check availability of username when creating an account</li>
       <li> Users can search for jobs using the following search criteria:
        <ul>
         <li>Job title, minimum pay and city</li>
         <li>Nearby Veterans jobs (jobs vets are preferred candidates)</li>
         <li>Veteran jobs by location</li>
         <li>Job title and location</li>
         <li>Keywords and location</li>
         <li>Nearby jobs</li>
        </ul>
       </li>
       <li> Logged in users can get veteran jobs nationwide posted within the last 30 days </li>
       <li>A logged in user can search for jobs and do the following:
        <ul>
         <li>Add a job to 'Favorite Jobs'</li>
         <li>If the job was already in the user's 'Favorite Jobs', the job card gives them the option to remove it from their jobs</li>
         <li>View jobs on a employer website if the website is available</li>
         <li>Apply to a job</li>
         <li>See information on the job like pay, company, requirements, location, description, etc</li>
         <li>Search returned stations by name</li>
         <li>Filter jobs by pay, location, industry, and job title</li>
         <li>Start a new search altogether</li>
        </ul>
       </li>
       <li>User can view 'My Applied Jobs' in a separate dashboard</li>
       <li>User can add/delete notes and tasks to a job in their applied of favorite jobs</li>
       <li>User can create and delete search preferences</li>
       <li>User can run a search for nearest jobs from thier location</li>
      </ul>
    </p>
    
  <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
  
  <h1 id="goals">Goals</h1>
    <p>  The goals of this app are;

 <ul>
  <li>To present real jobs to users</li>
  <li>To make it easier to for job seekers to manage their job search process within one app</li>
   <li>To make finding Veteran jobs(jobs veterans are preferred candidates) easier</li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>



<h1 id="challenge">Challenges</h1>
    <p> The challenges faced while developing this app were;

 <ul>
  <li>Finding suitable job APIs. Most either limited you to one job, presented the response in formats that will make data manipulation tougher, or made the results unusable for the purposes of recreating the job</li>
  <li>Some job APIs served only business clients</li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

<h1 id="demo">Demo</h1>
   <p>Click <a href="https://youtu.be/LVsukhMWxtI">here</a> to view demo</p>
   
   <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

 <h1 id="installation">Installation</h1>
   <h2 id="prerequisites">Prerequisites</h2>
   <ul>
   <li>Sign up with<a href="https://developer.usajobs.gov/APIRequest/Index/"> USAJobs</a> to get an API key that will enable you fetch jobs from their API</li>
     <li>Go to<a href="https://developers.google.com/maps/documentation/javascript/get-api-key"> Google maps JavaScript API key documentation page</a> to get an API key that will enable use any number of the about 14 different APIs for google maps services</li>
  </ul>

 <h2 id="backend-installation">Backend installlation</h2>

   <p>FindJob backend is biult with Ruby(2.7.0), Rails(^6.0.2), PostgreSQL(0.18) for PostgreSQL 12.1, Bcrypt(^3.1.7), JWT, Active model serializer(^0.10.0), and Dotenv-rails(^2.7). 
  
 <ul> 
  <li>Clone <a href="https://github.com/chinomnsoawazie/find-job-backend">FindJob backend</a>
    <ul>
      <li>Ensure you have these uncommented or added in your gemfile before running <code>bundle install</code>
      <ul>
         <li><code>gem 'jwt'</code></li>
         <li><code>gem 'active_model_serializers', '~> 0.10.0'</code></li>
         <li><code>gem "dotenv-rails", "~> 2.7"</code></li>
         <li><code>gem 'bcrypt', '~> 3.1.7'</code></li>
         <li><code>gem 'pg', '>= 0.18'</code></li>
         <li><code>gem 'rails', '~> 6.0.2'</code></li>
         <li><code>ruby '2.7.0'</code></li>
        </ul>
      </li>
    </ul>
  </li>
  <li>In your terminal, run <code>rvm use ruby-2.7.0</code> to make sure you are using the correct Ruby version(this assumes you already had Ruby 2.7.0 installed)</li>
  <li>Run <code>bundle install</code> to install all gems/dependancies required for FindStation</li>
  <li>Run <code>rails db:create</code> to create a local PostgresQL database</li>
  <li>Run <code>rails db:migrate</code>to create the tables/columns required for proper FindStation functionality</li>
  <li>Create a file called .env in the backend directory (/station_locate_backend/) and add HMAC_SECRET = "<insert a secret string here>"(this is for your JWT token), USAJobsAPIKey= "<insert API Token you were issued by USAJobs>", and GOOGLE_MAPS_API_KEY= "<insert API Token you were issued by Google maps API>" to the file</li>
   <li>Head over to  the <a href="https://github.com/chinomnsoawazie/find-job-frontend#installation">frontend</a> for instructions on how to install the frontend</li>

 </ul>
</p>

 <h2 id="first-start">First start</h2>
<p>After installtion you need to fire up the backend API and the frontend in that order. For the backend, navigate into the folder you cloned the backend repo into(probably need to run an <code>ls</code> command to be sure youre in the root app folder), and run <code>rails s</code>. This would start the backend on the default <code>port 3000</code>. Then in a new shell tab or new terminal window, navivate to the folder containing the cloned and properly installed frontend repo and run <code>npm start</code>. It should come up with a dialog that informs you <code>port 3000</code> is taken and props you to chose to run the frontend on a different port. Chose yes and everything should be alright. Frontend will run on a port with a number above 3000, usually 3001.<br/>

To access the backend, go to <code>http://localhost:3000</code><br/>
To acess the frontend, go to <code>http://localhost:3001</code></p>
 
<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

<h1 id="summary-of-files">Summary of files</h1>
   <h2 id="external-dataset">External datatset</h2>
    <p>
 <ul>
  <li><a href="https://developer.usajobs.gov/API-Reference/GET-api-Search">USAJobs API</a></li>
  <li><a href="https://developers.google.com/maps/documentation/geocoding/start"> Google geocoding API:</a> Gives the City and State of user based on device GPS</li>
</ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>


<h1 id="summary-of-files">Summary of files</h1>
   <h2 id="internal-file-structure">Internal file structure</h2>
    <p>
 <ul>
  <li><a href="https://github.com/chinomnsoawazie/find-job-backend/tree/master/find_job_backend/app">App:</a> Primary location for backend API configuration
    <ul>
      <li><a href="https://github.com/chinomnsoawazie/find-job-backend/tree/master/find_job_backend/app/controllers">controllers:</a> Render/RESTful/CRUD methods that carry our actoins including authorizations, checks, etc</li>
       <li><a href="https://github.com/chinomnsoawazie/find-job-backend/tree/master/find_job_backend/app/serializers">serializers:</a>Filters for the backend API</li>
        <li><a href="https://github.com/chinomnsoawazie/find-job-backend/tree/master/find_job_backend/app/models">models:</a>Active Record Associations/Validation methods</li>
    </ul>
   
   </li>
   <li><a href="https://github.com/chinomnsoawazie/find-job-backend/tree/master/find_job_backend/config"> config:</a> Start/Backend configuration files for routes, etc</li>
  <li><a href="https://github.com/chinomnsoawazie/find-job-backend/tree/master/find_job_backend/db"> db:</a> Database configuration files</li>
  <li><a href="https://github.com/chinomnsoawazie/find-job-backend/blob/master/find_job_backend/Gemfile"> Gemfile:</a> Prerquisites and dependencies</li>
</ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>




 <h1 id="planned-improvements">Planned improvements</h1>
    <p>  Some of the planned improvements include;

 <ul>
  <li>Adding IBM Watson to add AI capabilities for registered(those that created accounts) user behaviours</li>
  <li>Implement OAuth 2.0 to enable logging in using social media accounts</li>
  <li>Implement reminders for tasks</li>
   <li>Integrate app with device programs like calenders, alarms, reminders, etc</li>

 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>


 <h1 id="contact">Contacts</h1>
    <p>
 <ul>
  <li><a href="coawazie@gmail.com">Email</a></li>
  <li><a href="https://www.linkedin.com/in/chinomnsoawazie/">LinkedIn</a></li>
  <li><a href="https://twitter.com/COAwazie">Twitter</a></li>
  <li><a href="https://medium.com/coffee-software">Medium</a></li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

 <h1 id="credits">Credits</h1>
    <p>
 <ul>
  <li><a href="https://flatironschool.com/">The Flatiron School</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript">JavaScript</a></li>
  <li><a href="https://jwt.io/introduction/">JWT Auth</a></li>
  <li><a href="https://reactjs.org/">React</a></li>
    <li><a href="https://reacttraining.com/react-router/">React router</a></li>
  <li><a href="https://www.npmjs.com/package/redux-thunk">Redux Thunk</a></li>
  <li><a href="https://www.npmjs.com/package/axios">Axios</a></li>
  <li><a href="https://www.npmjs.com/package/redux">Redux</a></li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

