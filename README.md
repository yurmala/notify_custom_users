# Redmine Plugin for Notifying Custom Users

[![Build Status](https://travis-ci.org/Undev/notify_custom_users.png)](https://travis-ci.org/Undev/notify_custom_users)
[![Code Climate](https://codeclimate.com/github/Undev/notify_custom_users.png)](https://codeclimate.com/github/Undev/notify_custom_users)

This plugin automatically sends email notifications to users specified in the **Custom field** of the **User** format.

## Compatibility

This plugin version is compatible only with Redmine 2.2.x and later.

## Installation

1. To install the plugin
    * Download the .ZIP archive, extract files and copy the plugin directory into #{REDMINE_ROOT}/plugins.
    
    Or

    * Change you current directory to your Redmine root directory:  

            cd {REDMINE_ROOT}
            
      Copy the plugin from GitHub using the following commands:
      
            git clone git://github.com/Undev/notify_custom_users.git plugins/notify_custom_users
            
2. Update the Gemfile.lock file by running the following commands:  

         rm Gemfile.lock  
         bundle install
            
3. Restart Redmine.

## Usage

This plugin sends email notifications to users specified in the **Custom field** of the **User** format. Before sending a notification, the plugins checks whether the user has the required permissions with regard to the corresponding project. If the user specified in the custom field is changed, both the previous user and the new user will receive notifications.
 
To create a custom field in Redmine

1. Go to **Administration > Custom fields** and click **New custom field**.  
  ![create custom field](notify_custom_users_1.PNG)
2. Select the required type of object to which you want to attach the custom field, e.g. **Issues**. Click **Next**.
3. Select the **User** format in the drop-down list and specify the field name. Click **Save**.  
  ![create custom field](notify_custom_users_2.PNG)

When you create or edit an issue, you can use the created field to select a user you want to notify by email.
![select user](notify_custom_users_3.PNG)

## License

Copyright (c) 2014 Undev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.