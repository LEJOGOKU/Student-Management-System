<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #fff;
            margin: 0;
            padding: 0;
        }
        header {
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        header h1 {
            margin: 0;
            font-size: 2.5em;
            letter-spacing: 2px;
        }
        section {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 100px);
        }
        article {
            background: rgba(255, 255, 255, 0.2);
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            max-width: 600px;
            width: 100%;
            text-align: center;
        }
        article h1 {
            font-size: 1.8em;
            margin: 15px 0;
            background: rgba(0, 0, 0, 0.3);
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        @media (max-width: 768px) {
            header h1 {
                font-size: 2em;
            }
            article h1 {
                font-size: 1.5em;
            }
        }
        @media (max-width: 480px) {
            header h1 {
                font-size: 1.5em;
            }
            article h1 {
                font-size: 1.2em;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Event Information</h1>
    </header>
    <section>
        <article>
            <h1>Hello, ${eventtDetails.EventName}!</h1>
            <h1>Hello this is your, ${eventtDetails.id}!</h1> 
            <h1>Your Event name is, ${eventtDetails.EventName}!</h1>
            <h1>Your Event date is, ${eventtDetails.EventDate}!</h1>
            <h1>Your Mobile number is, ${eventtDetails.MobileNumber}!</h1>
            <h1>Your email id is, ${eventtDetails.email}!</h1>
        </article>
    </section>
</body>
</html>
