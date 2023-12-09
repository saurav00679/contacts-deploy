class InsertContactsData < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      INSERT INTO contacts (id, name, email, contact_number, created_at, updated_at)
      VALUES
        (1, 'Saurav Sharma', 'saurav@gmail.com', '8278874126', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (2, 'Gaurav Sharma', 'gaurav@gmail.com', '8278874133', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (3, 'Priya Patel', 'priya@gmail.com', '9123456789', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (4, 'Rahul Kapoor', 'rahul@gmail.com', '9876543210', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (5, 'Neha Verma', 'neha@gmail.com', '8765432109', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (6, 'Amit Singh', 'amit@gmail.com', '7654321098', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (7, 'Ananya Das', 'ananya@gmail.com', '6543210987', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (8, 'Vikram Yadav', 'vikram@gmail.com', '5432109876', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (9, 'Pooja Mehta', 'pooja@gmail.com', '4321098765', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (10, 'Rohit Khanna', 'rohit@gmail.com', '3210987654', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (11, 'Shreya Sharma', 'shreya@gmail.com', '2109876543', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (12, 'Kunal Jain', 'kunal@gmail.com', '1098765432', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (13, 'Swati Dubey', 'swati@gmail.com', '9876543210', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (14, 'Varun Kapoor', 'varun@gmail.com', '8765432109', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (15, 'Shivani Patel', 'shivani@gmail.com', '7654321098', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (16, 'Aryan Gupta', 'aryan@gmail.com', '6543210987', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (17, 'Neha Tiwari', 'neha.tiwari@gmail.com', '5432109876', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (18, 'Rajat Verma', 'rajat.verma@gmail.com', '4321098765', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (19, 'Kritika Singh', 'kritika.singh@gmail.com', '3210987654', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (20, 'Alok Sharma', 'alok.sharma@gmail.com', '2109876543', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (21, 'Riya Kapoor', 'riya.kapoor@gmail.com', '1098765432', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (22, 'Ankit Yadav', 'ankit.yadav@gmail.com', '9876543210', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (23, 'Sneha Mehta', 'sneha.mehta@gmail.com', '8765432109', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (24, 'Avinash Khanna', 'avinash.khanna@gmail.com', '7654321098', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (25, 'Sakshi Das', 'sakshi.das@gmail.com', '6543210987', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (26, 'Mayank Yadav', 'mayank.yadav@gmail.com', '5432109876', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (27, 'Ishaan Mehta', 'ishaan.mehta@gmail.com', '4321098765', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (28, 'Simran Kapoor', 'simran.kapoor@gmail.com', '3210987654', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (29, 'Rajesh Sharma', 'rajesh.sharma@gmail.com', '2109876543', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
        (30, 'Kavita Singh', 'kavita.singh@gmail.com', '1098765432', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
    SQL
  end

  def down
    execute <<-SQL
      DELETE FROM contacts WHERE id BETWEEN 1 AND 30;
    SQL
  end
end
