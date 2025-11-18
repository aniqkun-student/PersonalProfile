<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${name}'s Digital Profile</title>
    <!-- Creative CSS for a professional, light, and organized dashboard theme -->
    <style>
        body {
            font-family: 'Segoe UI', Roboto, sans-serif;
            background-color: #eef2f5; /* Light background */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 30px 20px;
        }
        .profile-dashboard {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 900px;
            border-left: 6px solid #00897b; /* Teal accent */
        }
        .header {
            text-align: center;
            margin-bottom: 30px;
            padding-bottom: 20px;
            border-bottom: 1px solid #eee;
        }
        h1 {
            color: #00897b;
            font-size: 2.5em;
            margin-bottom: 5px;
        }
        .subtitle {
            color: #666;
            font-size: 1.1em;
            font-weight: 300;
        }

        .section-title {
            font-size: 1.5em;
            color: #2c3e50;
            border-bottom: 2px solid #00897b;
            padding-bottom: 5px;
            margin-top: 30px;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .data-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 25px;
        }
        .data-card {
            background-color: #f8f8f8;
            padding: 20px;
            border-radius: 8px;
            border: 1px solid #eee;
            transition: border-color 0.3s;
        }
        .data-card:hover {
            border-color: #00897b;
        }
        .label {
            font-weight: 700;
            color: #00897b;
            display: block;
            margin-bottom: 5px;
            font-size: 0.9em;
            text-transform: uppercase;
        }
        .value {
            font-size: 1.1em;
            color: #333;
        }

        .intro-section {
            margin-top: 30px;
            padding: 25px;
            background-color: #e0f2f1; /* Light teal background */
            border-radius: 8px;
        }
        .intro-section p.value {
            line-height: 1.7;
            color: #2c3e50;
        }

        /* Mobile Adjustments */
        @media (max-width: 600px) {
            .profile-dashboard {
                padding: 20px;
            }
            .data-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="profile-dashboard">
        <div class="header">
            <!-- Retrieve Name from request attribute, set by the Servlet -->
            <h1>${name}</h1> 
            <p class="subtitle">Personal Profile Overview</p>
        </div>

        <div class="section-title">Academic Details</div>
        <div class="data-grid">
            
            <div class="data-card">
                <span class="label">Student ID</span>
                <!-- Retrieve Student ID from request attribute -->
                <span class="value">${studentID}</span>
            </div>
            
            <div class="data-card">
                <span class="label">Program/Course</span>
                <!-- Retrieve Program from request attribute -->
                <span class="value">${program}</span>
            </div>
            
            <div class="data-card">
                <span class="label">Email Contact</span>
                <!-- Retrieve Email from request attribute -->
                <span class="value">${email}</span>
            </div>
            
        </div>

        <div class="section-title">Personal Overview</div>
        <div class="data-grid">
            <div class="data-card" style="grid-column: 1 / -1;">
                <span class="label">Primary Hobbies</span>
                <!-- Retrieve Hobbies from request attribute -->
                <span class="value">${hobbies}</span>
            </div>
        </div>

        <div class="intro-section">
            <div class="section-title" style="border: none; margin-top: 0; color: #004d40;">My Introduction</div>
            <!-- Retrieve Introduction from request attribute -->
            <p class="value">${introduction}</p>
        </div>
        
    </div>
</body>
</html>