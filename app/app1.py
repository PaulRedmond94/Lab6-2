from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
	return "Hello world!"

@app.route("/user/<username>")
def show_user_profile(username):
	#show the profile for that user
	return 'User %s' % username

@app.route('/index')
def index():
	user = {'nickname': 'Cloud User'} #fake user
	return '''

<html>
	<head>
		<title>Home Page</title>
	</head>
	<body>
		<form method="POST" enctype="multipart/form-data" action="">
			<input type = "file" name="myfile" />
			<br />
			<input type = "submit" />
		</form>
	</body>
</html>

'''
			
if __name__ == "__main__":
	app.run(host="0.0.0.0", port=8080, debug = True)


