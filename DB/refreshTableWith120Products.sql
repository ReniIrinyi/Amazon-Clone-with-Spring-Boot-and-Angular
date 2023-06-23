-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Books');
INSERT INTO product_category(category_name) VALUES ('Films');
INSERT INTO product_category(category_name) VALUES ('Toy');


-- -----------------------------------------------------
-- Books
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES
('BOOK-TECH-1001', 'Mastering SQL Queries', 'Unlock the power of SQL with this comprehensive guide. Learn how to write complex queries, optimize performance, and work with advanced database concepts. Get ready to take your SQL skills to the next level!', 'assets/images/products/books/1001.png', 1, 50, 19.99, 1, NOW()),
('BOOK-TECH-1002', 'Data Science Essentials', 'Discover the essentials of data science in this practical book. From data cleaning and exploration to predictive modeling and visualization, you will learn the key concepts and techniques used by data scientists. Start your data science journey today!', 'assets/images/products/books/1002.png', 1, 75, 24.99, 1, NOW()),
('BOOK-TECH-1003', 'JavaScript Mastery', 'Become a JavaScript master with this comprehensive guide. Learn the language from scratch, explore advanced concepts like closures and prototypes, and build real-world applications. Get ready to unleash the full potential of JavaScript!', 'assets/images/products/books/1003.png', 1, 80, 17.99, 1, NOW()),
('BOOK-TECH-1004', 'Introduction to Machine Learning', 'Step into the exciting world of machine learning with this introductory book. Learn the fundamental concepts, algorithms, and tools used in the field. Whether you are a beginner or an experienced programmer, this book has something for you!', 'assets/images/products/books/1004.png', 1, 90, 21.99, 1, NOW()),
('BOOK-TECH-1005', 'Web Development with React', 'Build modern web applications using React.js. This book guides you through the process of building interactive user interfaces, managing state, and integrating with backend APIs. Take your web development skills to the next level!', 'assets/images/products/books/1005.png', 1, 70, 16.99, 1, NOW()),
('BOOK-TECH-1006', 'Python for Data Analysis', 'Learn how to analyze and manipulate data using Python. This book covers essential libraries like pandas, numpy, and matplotlib, providing you with the necessary tools to extract insights from your data. Start your data analysis journey now!', 'assets/images/products/books/1006.png', 1, 60, 18.99, 1, NOW()),
('BOOK-TECH-1007', 'Java Programming 101', 'Master the fundamentals of Java programming with this beginner-friendly guide. Learn about object-oriented programming, control structures, and data structures. Get started with Java programming today!', 'assets/images/products/books/1007.png', 1, 85, 15.99, 1, NOW()),
('BOOK-TECH-1008', 'iOS App Development', 'Build stunning iOS apps with this comprehensive guide. Learn Swift programming, user interface design, and app deployment. Whether you are a beginner or an experienced developer, this book will help you create amazing iOS applications.', 'assets/images/products/books/1008.png', 1, 40, 29.99, 1, NOW()),
('BOOK-TECH-1009', 'Machine Learning in Practice', 'Take your machine learning skills to the next level with this practical guide. Explore real-world use cases and learn how to apply machine learning algorithms to solve complex problems. Start building intelligent systems today!', 'assets/images/products/books/1009.png', 1, 95, 23.99, 1, NOW()),
('BOOK-TECH-1010', 'Full Stack Web Development', 'Become a full-stack web developer with this comprehensive book. Learn front-end development with HTML, CSS, and JavaScript, and back-end development with popular frameworks like Node.js and Express. Master the art of web development!', 'assets/images/products/books/1010.png', 1, 65, 20.99, 1, NOW()),
('BOOK-TECH-1011', 'Data Visualization with Python', 'Learn how to create stunning visualizations using Python. This book covers popular libraries like Matplotlib and Seaborn, and teaches you how to present your data effectively. Enhance your data storytelling skills with Python!', 'assets/images/products/books/1011.png', 1, 55, 14.99, 1, NOW()),
('BOOK-TECH-1012', 'C++ Programming for Beginners', 'Start your journey into the world of C++ programming with this beginner-friendly guide. Learn the basics of C++ syntax, control structures, and object-oriented programming. Build a strong foundation in C++ programming!', 'assets/images/products/books/1012.png', 1, 75, 16.99, 1, NOW()),
('BOOK-TECH-1013', 'Mastering Data Structures', 'Become a master of data structures with this comprehensive book. Learn about arrays, linked lists, stacks, queues, trees, and more. Strengthen your programming skills by mastering data structures!', 'assets/images/products/books/1013.png', 1, 70, 19.99, 1, NOW()),
('BOOK-TECH-1014', 'Angular Essentials', 'Build dynamic web applications with Angular. This book teaches you how to build reusable components, handle data binding, and create responsive UIs. Dive into the world of Angular development!', 'assets/images/products/books/1014.png', 1, 80, 21.99, 1, NOW()),
('BOOK-TECH-1015', 'Deep Learning Fundamentals', 'Explore the fundamentals of deep learning with this comprehensive guide. Learn about neural networks, convolutional networks, recurrent networks, and more. Dive into the exciting field of deep learning!', 'assets/images/products/books/1015.png', 1, 90, 24.99, 1, NOW()),
('BOOK-TECH-1016', 'HTML and CSS Mastery', 'Master HTML and CSS with this comprehensive guide. Learn the essentials of web development, including semantic HTML, CSS layouts, and responsive design. Become a proficient web developer!', 'assets/images/products/books/1016.png', 1, 65, 15.99, 1, NOW()),
('BOOK-TECH-1017', 'Data Science for Business', 'Learn how to leverage data science for business success. This book explores the intersection of data science, business strategy, and decision-making. Discover how data can drive growth and innovation in your organization!', 'assets/images/products/books/1017.png', 1, 75, 19.99, 1, NOW()),
('BOOK-TECH-1018', 'Python Web Scraping', 'Learn how to extract data from websites using Python. This book covers web scraping techniques, tools, and best practices. Unlock the power of web scraping with Python!', 'assets/images/products/books/1018.png', 1, 85, 14.99, 1, NOW()),
('BOOK-TECH-1019', 'Ruby Programming Guide', 'Master the Ruby programming language with this comprehensive guide. Learn the syntax, object-oriented programming concepts, and best practices. Start your journey into Ruby programming!', 'assets/images/products/books/1019.png', 1, 60, 17.99, 1, NOW()),
('BOOK-TECH-1020', 'SQL Database Design', 'Learn how to design efficient and scalable SQL databases. This book covers data modeling, normalization, indexing, and database optimization. Master the art of SQL database design!', 'assets/images/products/books/1020.png', 1, 80, 23.99, 1, NOW()),
('BOOK-TECH-1021', 'Android App Development', 'Build powerful Android applications with this comprehensive guide. Learn Java programming, user interface design, and app deployment. Develop cutting-edge Android apps!', 'assets/images/products/books/1021.png', 1, 90, 21.99, 1, NOW()),
('BOOK-TECH-1022', 'Data Analysis with R', 'Learn how to analyze data using R. This book covers data manipulation, visualization, statistical analysis, and machine learning. Master the art of data analysis with R!', 'assets/images/products/books/1022.png', 1, 75, 18.99, 1, NOW()),
('BOOK-TECH-1023', 'JavaScript Frameworks', 'Explore popular JavaScript frameworks like React, Angular, and Vue. This book teaches you how to build modern web applications using these frameworks. Discover the power of JavaScript frameworks!', 'assets/images/products/books/1023.png', 1, 70, 20.99, 1, NOW()),
('BOOK-TECH-1024', 'iOS App Development with Swift', 'Learn Swift programming and build iOS apps from scratch. This book covers the fundamentals of iOS app development, including user interface design, data persistence, and app deployment. Dive into iOS app development!', 'assets/images/products/books/1024.png', 1, 80, 22.99, 1, NOW()),
('BOOK-TECH-1025', 'Practical Machine Learning', 'Learn practical machine learning techniques and algorithms. This book focuses on real-world applications and provides hands-on examples to help you master machine learning concepts. Apply machine learning to solve practical problems!', 'assets/images/products/books/1025.png', 1, 90, 24.99, 1, NOW()),
('BOOK-TECH-1026', 'Advanced Java Programming', 'Take your Java programming skills to the next level with this advanced guide. Learn about multithreading, networking, GUI programming, and more. Become an expert Java programmer!', 'assets/images/products/books/1026.png', 1, 85, 19.99, 1, NOW()),
('BOOK-TECH-1027', 'Python Data Science Cookbook', 'Discover practical recipes for data science using Python. This book provides solutions to common data science tasks, including data cleaning, feature engineering, and model evaluation. Master the art of data science with Python!', 'assets/images/products/books/1027.png', 1, 75, 15.99, 1, NOW()),
('BOOK-TECH-1029', 'Data Warehousing Essentials', 'Learn the essentials of data warehousing in this comprehensive guide. Explore data integration, dimensional modeling, ETL processes, and more. Master the art of data warehousing!', 'assets/images/products/books/1029.png', 1, 80, 17.99, 1, NOW()),
('BOOK-TECH-1028', 'Web Design Fundamentals', 'Learn the fundamentals of web design with this comprehensive guide. From HTML and CSS to user experience and responsive design, this book covers all aspects of modern web design. Start your journey into web design!', 'assets/images/products/books/1028.png', 1, 85, 19.99, 1, NOW()),
('BOOK-TECH-1030', 'Python for Finance', 'Discover how to use Python for financial analysis and quantitative modeling. This book covers topics like portfolio optimization, options pricing, and time series analysis. Dive into the world of Python for finance!', 'assets/images/products/books/1030.png', 1, 70, 21.99, 1, NOW()),
('BOOK-TECH-1031', 'WordPress Development Guide', 'Learn how to develop custom WordPress themes and plugins. This book covers WordPress development best practices, template hierarchy, and plugin development. Build powerful websites with WordPress!', 'assets/images/products/books/1031.png', 1, 65, 19.99, 1, NOW()),
('BOOK-TECH-1032', 'Natural Language Processing with Python', 'Explore the field of natural language processing (NLP) using Python. This book covers text preprocessing, sentiment analysis, named entity recognition, and more. Dive into the exciting world of NLP!', 'assets/images/products/books/1032.png', 1, 75, 23.99, 1, NOW()),
('BOOK-TECH-1033', 'Java Enterprise Development', 'Learn how to build scalable and robust Java enterprise applications. This book covers Java EE technologies, including servlets, JSP, EJB, and JPA. Become a proficient Java enterprise developer!', 'assets/images/products/books/1033.png', 1, 85, 18.99, 1, NOW()),
('BOOK-TECH-1034', 'Data Visualization with Tableau', 'Master the art of data visualization with Tableau. This book teaches you how to create interactive dashboards, charts, and maps using Tableau. Unlock the power of visual analytics!', 'assets/images/products/books/1034.png', 1, 90, 24.99, 1, NOW()),
('BOOK-TECH-1035', 'Android App UI Design', 'Learn how to design visually appealing and user-friendly UI for Android apps. This book covers UI design principles, material design guidelines, and best practices. Create stunning Android app interfaces!', 'assets/images/products/books/1035.png', 1, 70, 15.99, 1, NOW()),
('BOOK-TECH-1036', 'Python Network Programming', 'Discover how to build network applications using Python. This book covers socket programming, network protocols, and web scraping. Master network programming with Python!', 'assets/images/products/books/1036.png', 1, 80, 20.99, 1, NOW()),
('BOOK-TECH-1037', 'Data Science in Python', 'Explore the world of data science using Python. This book covers data manipulation, visualization, statistical analysis, and machine learning. Start your data science journey with Python!', 'assets/images/products/books/1037.png', 1, 75, 16.99, 1, NOW()),
('BOOK-TECH-1038', 'Java GUI Programming', 'Learn how to create graphical user interfaces (GUIs) with Java. This book covers Swing, JavaFX, event handling, and GUI design principles. Build interactive Java applications!', 'assets/images/products/books/1038.png', 1, 85, 19.99, 1, NOW()),
('BOOK-TECH-1039', 'Data Mining Techniques', 'Discover the techniques and algorithms used in data mining. This book covers association rules, clustering, classification, and more. Unlock the power of data mining!', 'assets/images/products/books/1039.png', 1, 90, 22.99, 1, NOW()),
('BOOK-TECH-1040', 'JavaScript Game Development', 'Learn how to build interactive games using JavaScript. This book covers game development fundamentals, animation, collision detection, and more. Dive into the world of JavaScript game development!', 'assets/images/products/books/1040.png', 1, 70, 18.99, 1, NOW())
;

-- -----------------------------------------------------
-- Films
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES
('FILM-1001', 'Action Hero', 'Join the thrilling adventures of an action hero as he battles villains and saves the day. Packed with intense action sequences and breathtaking stunts, this film is sure to keep you on the edge of your seat.', 'assets/images/products/films/1001.png', 1, 50, 9.99, 2, NOW()),
('FILM-1002', 'Romantic Escape', 'Indulge in a heartwarming love story set against a picturesque backdrop. Follow the journey of two lovers as they navigate through obstacles and discover the true meaning of love.', 'assets/images/products/films/1002.png', 1, 60, 12.99, 2, NOW()),
('FILM-1003', 'Sci-Fi Adventure', 'Embark on a thrilling sci-fi adventure that takes you to distant galaxies and showcases futuristic technologies. Immerse yourself in a world of mind-bending concepts and epic battles.', 'assets/images/products/films/1003.png', 1, 70, 14.99, 2, NOW()),
('FILM-1004', 'Comedy Central', 'Get ready to laugh out loud with this hilarious comedy film. Filled with witty dialogues, funny situations, and memorable characters, this film is guaranteed to tickle your funny bone.', 'assets/images/products/films/1004.png', 1, 80, 11.99, 2, NOW()),
('FILM-1005', 'Drama Unleashed', 'Experience the emotional rollercoaster of a gripping drama that explores the depths of human relationships and confronts powerful themes. Brace yourself for intense performances and thought-provoking storytelling.', 'assets/images/products/films/1005.png', 1, 65, 13.99, 2, NOW()),
('FILM-1006', 'Animated Delight', 'Delight in the enchanting world of animation with this visually stunning film. Experience the magic of vibrant characters, captivating storytelling, and breathtaking animation techniques.', 'assets/images/products/films/1006.png', 1, 55, 10.99, 2, NOW()),
('FILM-1007', 'Thriller Suspense', 'Hold your breath as you dive into a suspenseful thriller that keeps you guessing till the very end. Unravel the mystery, navigate through twists and turns, and prepare for an adrenaline-pumping experience.', 'assets/images/products/films/1007.png', 1, 75, 15.99, 2, NOW()),
('FILM-1008', 'Fantasy Quest', 'Embark on an epic fantasy quest filled with mythical creatures, ancient prophecies, and a battle between good and evil. Get ready for a visually stunning and emotionally captivating adventure.', 'assets/images/products/films/1008.png', 1, 90, 16.99, 2, NOW()),
('FILM-1009', 'Horror Frenzy', 'Experience the spine-chilling terror of a gripping horror film that will haunt your nightmares. Brace yourself for jump scares, suspenseful moments, and a chilling atmosphere.', 'assets/images/products/films/1009.png', 1, 45, 8.99, 2, NOW()),
('FILM-1010', 'Historical Epic', 'Immerse yourself in a grand historical epic that brings to life a significant era in history. Witness epic battles, political intrigues, and the triumphs and tragedies of legendary figures.', 'assets/images/products/films/1010.png', 1, 85, 17.99, 2, NOW()),
('FILM-1011', 'Family Fun', 'Gather the whole family and enjoy a heartwarming film that is perfect for all ages. Share in the laughter, tears, and valuable life lessons that this delightful film has to offer.', 'assets/images/products/films/1011.png', 1, 70, 12.99, 2, NOW()),
('FILM-1012', 'Crime Investigation', 'Dive into the gritty world of crime investigation with this intense film. Follow the detectives as they unravel complex cases, chase down criminals, and strive for justice.', 'assets/images/products/films/1012.png', 1, 75, 13.99, 2, NOW()),
('FILM-1013', 'Musical Extravaganza', 'Experience the magic of music and dance with this spectacular musical film. Get swept away by catchy tunes, breathtaking choreography, and captivating performances.', 'assets/images/products/films/1013.png', 1, 80, 14.99, 2, NOW()),
('FILM-1014', 'Sports Drama', 'Get inspired by the triumphs and challenges of athletes in this gripping sports drama. Witness the dedication, passion, and resilience that drives them towards their goals.', 'assets/images/products/films/1014.png', 1, 65, 11.99, 2, NOW()),
('FILM-1015', 'Mystery Unveiled', 'Uncover the secrets and solve the puzzles in this intriguing mystery film. Engage your mind, follow the clues, and get ready for a thrilling ride filled with suspense and surprises.', 'assets/images/products/films/1015.png', 1, 75, 15.99, 2, NOW()),
('FILM-1016', 'Romantic Comedy', 'Laugh, cry, and fall in love with this delightful romantic comedy. Experience the joys and complexities of relationships, accompanied by witty humor and heartwarming moments.', 'assets/images/products/films/1016.png', 1, 70, 12.99, 2, NOW()),
('FILM-1017', 'War Chronicles', 'Witness the heroism and sacrifices of soldiers in this gripping war film. Transport yourself to the battlegrounds, feel the intensity of combat, and explore the human side of war.', 'assets/images/products/films/1017.png', 1, 85, 17.99, 2, NOW()),
('FILM-1018', 'Psychological Thriller', 'Delve into the depths of the human mind with this mind-bending psychological thriller. Brace yourself for psychological twists, mind games, and a suspenseful narrative.', 'assets/images/products/films/1018.png', 1, 75, 14.99, 2, NOW()),
('FILM-1019', 'Adventure Quest', 'Embark on a thrilling adventure filled with danger, discovery, and self-discovery. Join the protagonist as they journey through exotic lands and encounter extraordinary challenges.', 'assets/images/products/films/1019.png', 1, 80, 16.99, 2, NOW()),
('FILM-1020', 'Documentary Showcase', 'Expand your horizons with this insightful documentary that sheds light on real-world events, social issues, and fascinating subjects. Gain a deeper understanding of the world we live in.', 'assets/images/products/films/1020.png', 1, 60, 9.99, 2, NOW()),
('FILM-1021', 'Supernatural Thrills', 'Experience the supernatural thrills and spine-chilling encounters in this gripping film. Prepare for supernatural entities, paranormal investigations, and unexpected twists.', 'assets/images/products/films/1021.png', 1, 70, 13.99, 2, NOW()),
('FILM-1022', 'Biographical Journey', 'Take a captivating journey through the life of an influential figure in this biographical film. Witness their struggles, triumphs, and lasting impact on the world.', 'assets/images/products/films/1022.png', 1, 75, 14.99, 2, NOW()),
('FILM-1023', 'Political Drama', 'Immerse yourself in the complex world of politics with this gripping drama. Experience the power struggles, moral dilemmas, and personal sacrifices of those in the political arena.', 'assets/images/products/films/1023.png', 1, 65, 11.99, 2, NOW()),
('FILM-1024', 'Classic Rewind', 'Relive the magic of a timeless classic with this film that has stood the test of time. Experience the nostalgia and cinematic brilliance that has captivated audiences for generations.', 'assets/images/products/films/1024.png', 1, 80, 16.99, 2, NOW()),
('FILM-1025', 'Natures Wonders', 'Escape to the beauty of nature with this visually stunning film. Explore breathtaking landscapes, encounter wildlife, and discover the wonders of our natural world.', 'assets/images/products/films/1025.png', 1, 70, 12.99, 2, NOW()),
('FILM-1026', 'Teenage Drama', 'Follow the ups and downs of teenage life in this heartfelt drama that explores the challenges and emotions of adolescence. Relate to the characters as they navigate friendship, love, and self-discovery.', 'assets/images/products/films/1026.png', 1, 75, 13.99, 2, NOW()),
('FILM-1027', 'Period Piece', 'Transport yourself to a different era with this captivating period piece. Immerse yourself in the historical setting, intricate costumes, and the cultural nuances of a bygone time.', 'assets/images/products/films/1027.png', 1, 80, 15.99, 2, NOW()),
('FILM-1028', 'Foreign Delight', 'Explore the cinematic offerings from around the world with this foreign film that exposes you to different cultures, languages, and storytelling traditions. Expand your cinematic horizons.', 'assets/images/products/films/1028.png', 1, 65, 10.99, 2, NOW()),
('FILM-1029', 'Action-Packed', 'Get your adrenaline pumping with this action-packed film that features high-octane stunts, thrilling chases, and jaw-dropping sequences. Brace yourself for non-stop excitement.', 'assets/images/products/films/1029.png', 1, 75, 14.99, 2, NOW()),
('FILM-1030', 'Romantic Tearjerker', 'Prepare to shed tears with this heart-wrenching romantic film that explores the depths of love, loss, and human connections. Have tissues ready for an emotional journey.', 'assets/images/products/films/1030.png', 1, 60, 11.99, 2, NOW()),
('FILM-1031', 'Science Fiction Odyssey', 'Embark on a mind-bending science fiction odyssey that takes you to distant planets, futuristic civilizations, and mind-boggling concepts. Prepare for an epic journey through space and time.', 'assets/images/products/films/1031.png', 1, 85, 16.99, 2, NOW()),
('FILM-1032', 'Comedy Ensemble', 'Laugh your heart out with this ensemble comedy that brings together a hilarious cast of characters in a series of interconnected comedic mishaps and adventures.', 'assets/images/products/films/1032.png', 1, 70, 13.99, 2, NOW()),
('FILM-1033', 'Psychological Drama', 'Explore the depths of the human psyche with this thought-provoking psychological drama. Witness complex characters, moral dilemmas, and the intricacies of the human mind.', 'assets/images/products/films/1033.png', 1, 75, 15.99, 2, NOW()),
('FILM-1034', 'Fantasy Enchantment', 'Step into a world of fantasy and enchantment with this visually mesmerizing film. Encounter mythical creatures, magical realms, and a tale of wonder and adventure.', 'assets/images/products/films/1034.png', 1, 80, 17.99, 2, NOW()),
('FILM-1035', 'Crime Thriller', 'Get caught up in the suspense of a gripping crime thriller that keeps you guessing until the very end. Unravel the clues, uncover the truth, and prepare for a thrilling ride.', 'assets/images/products/films/1035.png', 1, 65, 12.99, 2, NOW()),
('FILM-1036', 'Historical Drama', 'Immerse yourself in a gripping historical drama that brings to life pivotal moments in history. Witness the struggles, triumphs, and human stories behind significant events.', 'assets/images/products/films/1036.png', 1, 75, 14.99, 2, NOW()),
('FILM-1037', 'Animated Adventure', 'Embark on a thrilling animated adventure that takes you to magical worlds and introduces you to unforgettable characters. Experience the magic of animation at its finest.', 'assets/images/products/films/1037.png', 1, 70, 11.99, 2, NOW()),
('FILM-1038', 'Horror Suspense', 'Prepare to be scared with this intense horror suspense film. Face your fears, experience terrifying moments, and brace yourself for a chilling cinematic experience.', 'assets/images/products/films/1038.png', 1, 75, 15.99, 2, NOW()),
('FILM-1039', 'Romantic Adventure', 'Embark on a romantic adventure filled with passion, danger, and thrilling escapades. Join the star-crossed lovers as they defy the odds and embark on an unforgettable journey.', 'assets/images/products/films/1039.png', 1, 80, 16.99, 2, NOW()),
('FILM-1040', 'Political Thriller', 'Navigate the treacherous world of politics with this gripping political thriller. Uncover conspiracies, power struggles, and the darker side of the political landscape.', 'assets/images/products/films/1040.png', 1, 65, 10.99, 2, NOW());
-- -----------------------------------------------------
-- Toy
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES
('TOY-1001', 'Superhero Action Figure', 'Unleash your imagination with this highly detailed superhero action figure. Join the epic battles and recreate your favorite superhero adventures.', 'assets/images/products/toys/1001.png', 1, 50, 9.99, 3, NOW()),
('TOY-1002', 'Dollhouse Playset', 'Step into a world of imagination with this beautiful dollhouse playset. Decorate the rooms, arrange the furniture, and let your creativity soar.', 'assets/images/products/toys/1002.png', 1, 60, 12.99, 3, NOW()),
('TOY-1003', 'Remote Control Car', 'Race at high speed with this sleek remote control car. Maneuver through obstacles, perform stunts, and experience the thrill of remote-controlled racing.', 'assets/images/products/toys/1003.png', 1, 70, 14.99, 3, NOW()),
('TOY-1004', 'Building Blocks Set', 'Build, create, and explore with this versatile building blocks set. Let your imagination run wild as you construct unique structures and unleash your architectural skills.', 'assets/images/products/toys/1004.png', 1, 80, 11.99, 3, NOW()),
('TOY-1005', 'Puzzle Game', 'Challenge your mind with this captivating puzzle game. Solve intricate puzzles, test your problem-solving skills, and unlock new levels of fun.', 'assets/images/products/toys/1005.png', 1, 65, 13.99, 3, NOW()),
('TOY-1006', 'Art Set', 'Unleash your creativity with this comprehensive art set. Paint, draw, and express yourself through various artistic mediums.', 'assets/images/products/toys/1006.png', 1, 55, 10.99, 3, NOW()),
('TOY-1007', 'Board Game', 'Gather your friends and family for a fun-filled game night with this exciting board game. Engage in friendly competition, strategize, and have a great time.', 'assets/images/products/toys/1007.png', 1, 75, 15.99, 3, NOW()),
('TOY-1008', 'Stuffed Animal', 'Cuddle up with this adorable stuffed animal. Soft, huggable, and full of charm, it will become your new favorite companion.', 'assets/images/products/toys/1008.png', 1, 90, 16.99, 3, NOW()),
('TOY-1009', 'Educational Toy', 'Combine learning and play with this educational toy. Develop new skills, enhance problem-solving abilities, and have fun while you learn.', 'assets/images/products/toys/1009.png', 1, 45, 8.99, 3, NOW()),
('TOY-1010', 'Toy Kitchen Set', 'Become a master chef with this toy kitchen set. Cook up imaginative meals, host pretend dinner parties, and let your culinary creativity shine.', 'assets/images/products/toys/1010.png', 1, 85, 17.99, 3, NOW()),
('TOY-1011', 'Toy Train Set', 'Embark on a railway adventure with this exciting toy train set. Build tracks, watch the train go around, and create your own miniature railroad.', 'assets/images/products/toys/1011.png', 1, 70, 12.99, 3, NOW()),
('TOY-1012', 'Play-Doh Set', 'Unleash your artistic talents with this Play-Doh set. Mold, shape, and create colorful masterpieces with this classic modeling compound.', 'assets/images/products/toys/1012.png', 1, 75, 13.99, 3, NOW()),
('TOY-1013', 'Toy Musical Instrument', 'Discover the joy of music with this toy musical instrument. Play melodies, experiment with sounds, and nurture your musical talent.', 'assets/images/products/toys/1013.png', 1, 80, 14.99, 3, NOW()),
('TOY-1014', 'Outdoor Sports Set', 'Get active and play outdoors with this sports set. Kick, throw, and score goals as you engage in friendly competition and enjoy the thrill of outdoor play.', 'assets/images/products/toys/1014.png', 1, 65, 11.99, 3, NOW()),
('TOY-1015', 'Dress-Up Costume', 'Transform into your favorite character with this dress-up costume. Let your imagination soar as you embark on exciting make-believe adventures.', 'assets/images/products/toys/1015.png', 1, 75, 15.99, 3, NOW()),
('TOY-1016', 'Toy Building Kit', 'Build and construct with this engaging toy building kit. Enhance fine motor skills, spatial awareness, and creativity through hands-on building activities.', 'assets/images/products/toys/1016.png', 1, 70, 12.99, 3, NOW()),
('TOY-1017', 'Toy Telescope', 'Explore the wonders of the universe with this toy telescope. Observe celestial objects, learn about astronomy, and ignite your curiosity about the cosmos.', 'assets/images/products/toys/1017.png', 1, 85, 17.99, 3, NOW()),
('TOY-1018', 'Pretend Play Tool Set', 'Become a little handyman or handywoman with this pretend play tool set. Fix, repair, and build imaginary projects with realistic toy tools.', 'assets/images/products/toys/1018.png', 1, 75, 14.99, 3, NOW()),
('TOY-1019', 'Toy Science Kit', 'Spark your interest in science with this captivating toy science kit. Conduct experiments, learn scientific principles, and have fun exploring the world of science.', 'assets/images/products/toys/1019.png', 1, 80, 16.99, 3, NOW()),
('TOY-1020', 'Toy Doctor Kit', 'Become a caring doctor with this toy doctor kit. Perform check-ups, treat patients, and nurture empathy and compassion through imaginative play.', 'assets/images/products/toys/1020.png', 1, 60, 9.99, 3, NOW()),
('TOY-1021', 'Building and Construction Set', 'Construct and create with this building and construction set. Use your imagination to build structures, vehicles, and anything you can dream of.', 'assets/images/products/toys/1021.png', 1, 70, 13.99, 3, NOW()),
('TOY-1022', 'Toy Robot', 'Enter the world of robotics with this interactive toy robot. Program movements, solve puzzles, and explore the exciting world of STEM.', 'assets/images/products/toys/1022.png', 1, 75, 14.99, 3, NOW()),
('TOY-1023', 'Water Play Set', 'Enjoy splashing fun with this water play set. Engage in water-based activities, stay cool on hot days, and create your own mini water park.', 'assets/images/products/toys/1023.png', 1, 65, 11.99, 3, NOW()),
('TOY-1024', 'Toy Animal Figurines', 'Create your own animal kingdom with these toy animal figurines. Learn about different animals, engage in imaginative play, and embark on safari adventures.', 'assets/images/products/toys/1024.png', 1, 80, 16.99, 3, NOW()),
('TOY-1025', 'Toy Musical Keyboard', 'Unleash your inner musician with this toy musical keyboard. Play melodies, learn songs, and compose your own musical compositions.', 'assets/images/products/toys/1025.png', 1, 70, 12.99, 3, NOW()),
('TOY-1026', 'Toy Construction Vehicle Set', 'Dig, scoop, and build with this toy construction vehicle set. Create your own construction site, operate the vehicles, and construct imaginative projects.', 'assets/images/products/toys/1026.png', 1, 75, 13.99, 3, NOW()),
('TOY-1027', 'Interactive Learning Toy', 'Combine play and learning with this interactive learning toy. Develop cognitive skills, learn letters, numbers, and engage in fun educational activities.', 'assets/images/products/toys/1027.png', 1, 80, 15.99, 3, NOW()),
('TOY-1028', 'Toy Doctor Playset', 'Experience the world of medicine with this toy doctor playset. Examine patients, diagnose ailments, and play the role of a compassionate healthcare provider.', 'assets/images/products/toys/1028.png', 1, 65, 10.99, 3, NOW()),
('TOY-1029', 'Toy Race Track Set', 'Get ready for high-speed racing action with this toy race track set. Race cars, perform loops, and challenge your friends to exciting racing competitions.', 'assets/images/products/toys/1029.png', 1, 75, 14.99, 3, NOW()),
('TOY-1030', 'Toy Building Bricks', 'Let your creativity flourish with these toy building bricks. Build structures, vehicles, and anything you can imagine with these versatile and interlocking bricks.', 'assets/images/products/toys/1030.png', 1, 60, 11.99, 3, NOW());
-- -----------------------------------------------------
-- Clothes
-- -----------------------------------------------------
