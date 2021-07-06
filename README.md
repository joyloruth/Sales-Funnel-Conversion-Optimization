# Sales Funnel Conversion Optimization
OBJECTIVE: With SQL queries I will analyze event flow to gain insights into the potential buyers’ behavior. A funnel is a marketing model which illustrates the theoretical customer journey towards the purchase of a product or service. Oftentimes, we want to track how many users complete a series of steps and know which steps have the most number of users giving up.  The goal of this project is to optimize the sales funnel of an e-commerce website.

### Code and Resources

<li>Python 3</li>
<li>MySQL Version: 1.2.1</li>
<li>libraries: pandas, sklearn, matplotlib, seaborn</li>




# 1.0 Exploratory Analysis
Let’s get to “know” the data! Below are some highlights that will help us to better understand our data, before any cleaning.

The sales funnel has for steps:

The first page is the home page. When a visitor comes to the site for the first time, they can only land on the home page as a first page.
From the home page, the visitor can perform a search and land on the search page.
From the search page, if the visitor clicks on a product, they will land on the payment page, where they are asked to provide payment information in order to buy that product.
If visitor decides to buy the product and the payment is successful, they will land on the confirmation page.
I start by creating a schema called e-commerce_sales_funnel in MySQL and then creating tables within the database. The raw data has been loaded into Python in 5 unique tables and are listed as follows:

![image](https://user-images.githubusercontent.com/46979334/124644416-df9c1000-de57-11eb-8bfc-a69393f503f2.png)
![image](https://user-images.githubusercontent.com/46979334/124644438-e4f95a80-de57-11eb-8bcb-3800397dc596.png)
![image](https://user-images.githubusercontent.com/46979334/124644451-e88ce180-de57-11eb-8bcb-a25011718b83.png)
![image](https://user-images.githubusercontent.com/46979334/124644977-7bc61700-de58-11eb-870f-e27bc426cdb8.png)
![image](https://user-images.githubusercontent.com/46979334/124644995-7ff23480-de58-11eb-9fe2-214385174ed0.png)
![image](https://user-images.githubusercontent.com/46979334/124645009-8680ac00-de58-11eb-8d1a-d1a5ced397cc.png)

Generally, we want to know the total number of users in each step of the funnel, as well as the percent of users who complete each step. Below is a funnel created from the amount for users in the four steps. Next, we will calculate the conversion rate. 

# 2.0 Calculating Conversion Rate
 To get the conversion rate I divided the number of people completing each step by the number of people that completed the step previously.

We see that the amount of visitors that completed step 2 (Home Page) was slashed in half from 100% to 50%. Steps “Search page” dropping by 26% in the next step with the final step have a 54% drop from the previous step.

I used the SQL queries to find the number of results in each table.

![image](https://user-images.githubusercontent.com/46979334/124645134-ae700f80-de58-11eb-9aa5-c0cb4a8ff402.png)

![G](https://user-images.githubusercontent.com/46979334/124645212-c6e02a00-de58-11eb-930f-f3cd3afac4d9.PNG)

<h3>Funnel Conversion Data Visualization</h3>

![image](https://user-images.githubusercontent.com/46979334/124646479-4f12ff00-de5a-11eb-8ffd-71969a51f63f.png)



# 3.0 Analyzing Visitors by Gender
Lets take at look at the numbers for male and female genders to see if we can better understand the customers behaviors and reason for the low conversion rates! With SQL we can select the number of visitors per page and then group them by gender, as seen in the chart below.

![image](https://user-images.githubusercontent.com/46979334/124645336-ef682400-de58-11eb-886e-1b0ef17f8d2c.png)

![H](https://user-images.githubusercontent.com/46979334/124645411-03138a80-de59-11eb-8691-15d44723ca70.PNG)
![image](https://user-images.githubusercontent.com/46979334/124645443-0d358900-de59-11eb-8690-8b203cd87ebc.png)

After doing some analysis on the gender of the people that visit the e-commerce website we can see that there are no real distinctions between each step.

From the first page to the last the gender percentage seems to about equal. So it seems that conversion rates are not effected by gender. So lets move on to another variable in the user_table. We well select the “date” data and see if we can narrow in on when the visitor is more likely to complete the transaction.

# 4.0 Analyzing Visitors by Dates
Using the SQL query pictured below, I selected the top ten dates that had the most confirmed orders. It looks like there is an influx of orders surrounding the holiday Valentine’s Day but we only have a few months of data so lets take a look at another variable called “device”. Perhaps this column will have a more direct effect on visitor retention and the number of orders received.

![image](https://user-images.githubusercontent.com/46979334/124645514-22aab300-de59-11eb-91aa-9a191b8513f0.png)
![image](https://user-images.githubusercontent.com/46979334/124645525-276f6700-de59-11eb-9b28-215034514a1b.png)

![J](https://user-images.githubusercontent.com/46979334/124645593-3bb36400-de59-11eb-891d-a630b8b52744.PNG)

# 5.0 Analyzing Visitors by Device
When accessing the e-commerce website visitors are using one of two devices which are desktop or mobile. From the first step of the funnel we can see that desktop users out number mobile users with a ratio of 66.6% to 33.4% respectively.  Because of this we would expect to see about the same ratio of devices used in the confirmation page, but that is not the case. It is the complete opposite with the the mobile users doubling the percentage of the desktop users.

According to an article in Broadband Search, as of 2019, 55.9 percent of the time spent on websites comes from desktop users, compared to 40.1 percent for mobile users. While more people are accessing the web from mobile devices than desktops, people still tend to spend more time on sites when they access them from non-mobile devices.

![image](https://user-images.githubusercontent.com/46979334/124645655-4e2d9d80-de59-11eb-8f0c-fa04c60247d4.png)
![image](https://user-images.githubusercontent.com/46979334/124645670-52f25180-de59-11eb-95f8-8d020da900dc.png)
![image](https://user-images.githubusercontent.com/46979334/124645688-58e83280-de59-11eb-9372-37376bea0b91.png)
![image](https://user-images.githubusercontent.com/46979334/124645715-600f4080-de59-11eb-913c-779a3602c0b4.png)

When accessing the e-commerce website visitors are using one of two devices which are desktop or mobile. From the first step of the funnel we can see that desktop users out number mobile users with a ratio of 66.6% to 33.4% respectively.  Because of this we would expect to see about the same ratio of devices used in the confirmation page, but that is not the case. It is the complete opposite with the the mobile users doubling the percentage of the desktop users.

According to an article in Broadband Search, as of 2019, 55.9 percent of the time spent on websites comes from desktop users, compared to 40.1 percent for mobile users. While more people are accessing the web from mobile devices than desktops, people still tend to spend more time on sites when they access them from non-mobile devices.

# 6.0 How Can the Sales Funnel Be Optimized?
Half of the people that visit the e-commerce store do not make a search or explore the website. 50% of the visitors completely abandon the site before even browsing for any items. This leads to the assumption there may be a lack of aesthetic allure or technical issues.

<h2>Solution:</h2>

Consider cosmetic changes to the website layout in order to make the website responsive and more inviting for the desktop user.
Display the most searched and popular purchased items on the homepage. Provide clickable links of suggestions to customer to take the guess work out of their visit.
Use heat mapping to find the most used areas of the web page and make those areas easier to access.
 

From the desktop visitors who made a search on the website, 90% of them did not want to fill out the payment information. This significant drop of interest in customers who have searched the website maybe due to the lack of interest in the items or the price point. Another reason may be after seeing the total order amount that now includes unexpected additional costs or the taxes and shipping. However, the biggest reason for the steep decline is due to security, or a perceived lack thereof. Desktops are the most vulnerable devices to information-stealing malware, so it is understandable why a customer would hesitant to provide personal information online.

<h2>Solution:</h2>

Supply items that are most in demand and that have a competitive price point for the market in that industry.
Be upfront with the customer about delivery costs and have a running total displayed in the shopping cart.
Implement user-friendly privacy policies, an encrypted URL (https) that comes with a SSL certificate and an “Secure” lock icon to reassure reluctant customers their personal information is protected.
 In addition to credit or debit cards, provide alternative methods of making online payments. Some options include but are not limited to Paypal, Bitcoin or Apple Pay.
 

A vast majority of the customers who made it to the payment page continued on to receive a confirmation. The remaining  4.9% of them do not reach it mostly likely due to technical issues. They have entered some personal information incorrectly or the website is experiencing errors.

<h2>Solution:</h2>

Implement prompts that informs the customer of any possible errors they may have made in the entry of their personal information. (mismatch spelling, address associated with card, expired card)
Include a contact/tech support number, chat bot, FAQ or contact form so that I customer can easily get assistance and complete their order.

# 7.0 Conclusion
By making the aforementioned adjustments, the e-commerce website can increase the conversion rate of desktop users from the homepage to the confirmation page by a up to 98% .
