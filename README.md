Redmine Lightbox 2
==================

This plugin lets you to add authors to your projects.


Compatibility
-------------

This version is supported by Redmine 3.2.1


Installation and Setup
----------------------

* Clone or [download](https://github.com/frywer/authors) this repo into your **redmine_root/plugins/** folder

```
$ git clone https://github.com/paginagmbh/redmine_lightbox2.git
```
* If you downloaded a tarball / zip from master branch, make sure you rename the extracted folder to `authors`
* You have to run the plugin rake task to provide the assets (from the Redmine root directory):
```
$ rake redmine:plugins:migrate RAILS_ENV=production
```
* Restart redmine

Compatibility
-------------

<p align="center">
<img src="authors_create.png" width="350"/>
<img src="project_show.png" width="350"/>
<img src="user_show.png" width="350"/>

</p>