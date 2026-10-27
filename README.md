# AJAX Autocomplete Search with jQuery, PHP & MySQL

A country search box that displays live suggestions as you type using AJAX, jQuery, PHP, and MySQL — no page reload required.

## Video Tutorial

Watch the full step-by-step tutorial on YouTube:

**[How to Build AJAX Autocomplete Search with jQuery, PHP & MySQL](https://www.youtube.com/@makitweb)**

---

## Features

- Live search suggestions as you type
- Debouncing to reduce unnecessary AJAX requests
- Fills the input when a suggestion is selected
- Dropdown hides when clicking outside
- PHP prepared statements to prevent SQL injection

---

## Project Structure

```
autocomplete/
├── config.php       # Database connection
├── search.php       # Handles search request, returns JSON
├── index.html       # Search box, CSS, and jQuery code
└── countries.sql    # SQL dump to create and populate the countries table
```

---

## Requirements

- PHP 7.4 or higher
- MySQL 5.7 or higher
- MAMP, XAMPP, or any local PHP development environment

---

## Setup Instructions

### 1. Clone or Download the Repository

Download the ZIP from GitHub and extract it, or clone it:

```bash
git clone https://github.com/makitweb/autocomplete-js-ajax.git
```

Place the `autocomplete` folder inside your server's web root:

- **MAMP:** `htdocs/`
- **XAMPP:** `htdocs/`

### 2. Create the Database

Open **phpMyAdmin** (or your preferred MySQL client) and create a new database:

```sql
CREATE DATABASE tutorials;
```

> You can use any database name. Just update `config.php` to match.

### 3. Import the SQL File

In phpMyAdmin:

1. Select your database.
2. Click the **Import** tab.
3. Choose `countries.sql` and click **Go**.

This creates the `countries` table and inserts 50 country records.

### 4. Configure the Database Connection

Open `config.php` and update the credentials to match your local setup:

```php
$host     = "localhost";
$db       = "tutorials";   // your database name
$user     = "root";        // your MySQL username
$password = "root";        // your MySQL password
```

**MAMP default port:** If MAMP uses port `8889`, change the host to:

```php
$host = "localhost:8889";
```

### 5. Run the Project

Start your local server (MAMP, XAMPP, etc.) and open the project in your browser:

```
http://localhost/autocomplete/
```

Start typing a country name in the search box — suggestions will appear automatically.

---

## How It Works

1. The user types in the search box (`index.html`).
2. A debounced AJAX GET request is sent to `search.php?term=<input>`.
3. `search.php` queries the `countries` table using a `LIKE` prepared statement and returns a JSON array of matching names.
4. jQuery renders the results as a dropdown list.
5. Clicking a suggestion fills the input and hides the dropdown.
6. Clicking anywhere outside the dropdown closes it.

---

## License

Free to use for learning and personal projects.
