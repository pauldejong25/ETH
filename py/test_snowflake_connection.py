import snowflake.connector

conn = snowflake.connector.connect(
    account="VADVQSG-NS58239",
    user="PAULJ25",
    password="LikeAStone2002!",
    authenticator="username_password_mfa",
    passcode=input("TOTP code: "),
)

print("CONNECTED!")
conn.close()
