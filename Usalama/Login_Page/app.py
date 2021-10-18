from flask import Flask, render_template, request, redirect, url_for, flash


import pymysql

app = Flask(__name__)
app.secret_key = '#sw~dtrw90lsrs$!'


@app.route('/')
def Index():
    connection = pymysql.connect(host="localhost", user="root", password="", database="usalama_contacts")
    sql = "SELECT  * FROM login"
    cursor = connection.cursor()
    cursor.execute(sql)
    data = cursor.fetchall()
    cursor.close()

    return render_template('index2.html', users=data)


@app.route('/delete/<string:user_id>', methods=['GET'])
def delete(user_id):
    flash("Record deleted Successfully")
    connection = pymysql.connect(host="localhost", user="root", password="", database="usalama_contacts")
    sql = "DELETE FROM login WHERE user_id=%s"
    cursor = connection.cursor()
    cursor.execute(sql, (user_id))
    connection.commit()
    return redirect(url_for('Index'))


@app.route('/update', methods=['POST', 'GET'])
def update():

    if request.method == 'POST':
        user_id = request.form['user_id']
        name = request.form['name']
        email = request.form['email']
        phone = request.form['phone']
        username = request.form['username']
        password = request.form['password']
        connection = pymysql.connect(host="localhost", user="root", password="", database="usalama_contacts")
        sql = "UPDATE login SET name=%s, email=%s, phone=%s,username=%s, password=%s WHERE user_id=%s"

        flash("Updated Successfully")
        cursor = connection.cursor()
        cursor.execute(sql, (name, email, phone, username, password, user_id))
        connection.commit()
        return redirect(url_for('Index'))


if __name__ == "__main__":
    app.run(debug=True)