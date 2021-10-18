from flask import Flask, render_template, request,redirect,session
# introduce mysql connector
import pymysql

app = Flask(__name__)


@app.route('/contact', methods=['POST', 'GET'])
def contact():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        phone_number = request.form['phone_number']
        website = request.form['website']
        message = request.form['message']

        connection = pymysql.connect(host="localhost", user="root", password="", database="usalama_contacts")
        sql = "insert into contacts (name,email,phone_number,website,message) values(%s, %s ,%s,%s,%s)"
        cursor = connection.cursor()

        try:
            cursor.execute(sql, (name, email, phone_number, website, message))
            connection.commit()
            return render_template('contact.html', message="Message send Successfully")
        except:
            connection.rollback()
            return render_template('contact.html', message="message failed")
    else:
        return render_template('contact.html')


@app.route('/login', methods=['POST', 'GET'])
def login():
    if request.method == 'POST':
        name = request.form['Name']
        email = request.form['Email']
        phone_number = request.form['Phone_Number']

        connection = pymysql.connect(host="localhost", user="root", password="", database="usalama_contacts")
        sql = "select Name,Email,Phone_Number from users where Name =%s and Email =%s and Phone_Number=%s "
        cursor = connection.cursor()

        try:
            cursor.execute(sql, (name, email, phone_number))
            connection.commit()
            return render_template('login.html', message="Login Successfully")
        except:
            connection.rollback()
            return render_template('login.html', message="Login failed")
    else:
        return render_template('login.html')


if __name__ == '__main__':
    app.run(debug=True)