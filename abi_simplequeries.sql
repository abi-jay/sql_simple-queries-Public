# 1
# Write a query to display the name, product line, and 
# buy price of all products. 
# The output columns should display as 
# “Name,” “Product Line,” and “Buy Price.” 
# The output should display the most expensive items first.
select 	productName as Name, productLine as 'Product Line', buyPrice as 'Buy Price'
		from products
		order by buyPrice DESC;
        
# 2
# Write a query to display the first name, last name, and city name 
# of all customers from Germany. Columns should display as “First Name,” 
# “Last Name,” and “City.” The output should be sorted by “Last Name” 
# (ascending).
select 	contactFirstName as 'First Name', contactLastName as 'Last Name', city as 'City'
		from customers
		order by contactLastName;

# 3
# Write a query to display each of the unique values of the status field 
# in the orders table. The output should be sorted alphabetically, 
# increasing. Hint: The output should show exactly six rows.
select	DISTINCT status
		from orders
        order by status;
        
# 4
# Select all fields from the payments table for payments made on or 
# after January 1, 2005. The output should be sorted by the payment date 
# from highest to lowest.
select * 	from payments
			where paymentDate < 2005-01-01
            order by paymentDate DESC;

# 5
# Write a query to display the Last Name, First Name, Email Address, 
# and Job Title of all employees working out of the San Francisco office. 
# Output should be sorted by “Last Name.”
select 	lastName, firstName, email, jobTitle
		from employees
        where officeCode = (select officeCode from offices where city = 'San Francisco')
		order by lastName;
#6
# Write a query to display the Name, Product Line, Scale, and Vendor of all of the Car products – both classic and vintage. The output should display 
# all vintage cars first (sorted alphabetically by name), and all classic cars last (also sorted alphabetically by name). 
select 	productName, productLine, productScale, productVendor 
		from products
        where productLine IN ('Classic Cars' , 'Vintage Cars')
        order by 	productLine DESC,
					productName ASC;