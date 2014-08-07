.class public Lcom/ub/main/data/UserDataManage;
.super Ljava/lang/Object;
.source "UserDataManage.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "iContext"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public deleteData(Ljava/lang/String;)V
    .locals 4
    .parameter "userName"

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_0
    new-instance v2, Lcom/ub/main/util/SqlDbHelper;

    iget-object v3, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .local v2, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_1
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 74
    invoke-virtual {v2, p1}, Lcom/ub/main/util/SqlDbHelper;->deleteUserData(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 80
    const/4 v1, 0x0

    .line 84
    .end local v2           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v1       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/database/SQLException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 80
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 78
    :goto_2
    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 80
    const/4 v1, 0x0

    .line 82
    :cond_1
    throw v3

    .line 77
    .end local v1           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v2       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v1       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    goto :goto_2

    .line 75
    .end local v1           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v2       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v1       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    goto :goto_1

    .end local v1           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v2       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :cond_2
    move-object v1, v2

    .end local v2           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v1       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    goto :goto_0
.end method

.method public getAutoLoginUserData()Landroid/content/ContentValues;
    .locals 8

    .prologue
    .line 135
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v6, userdata:Landroid/content/ContentValues;
    new-instance v2, Lcom/ub/main/util/SqlDbHelper;

    iget-object v7, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V

    .line 138
    .local v2, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #userdata:Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .restart local v6       #userdata:Landroid/content/ContentValues;
    new-instance v2, Lcom/ub/main/util/SqlDbHelper;

    .end local v2           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    iget-object v7, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V

    .line 141
    .restart local v2       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_0
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 142
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->fetchAutoLoginUserData()Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 144
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 145
    .local v5, rows:I
    if-lez v5, :cond_0

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 149
    const-string v7, "username"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 148
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, name:Ljava/lang/String;
    const-string v7, "userpwd"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 150
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, pwd:Ljava/lang/String;
    const-string v7, "username"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v7, "userpwd"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #pwd:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 159
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    const/4 v0, 0x0

    .line 168
    .end local v5           #rows:I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 170
    const/4 v2, 0x0

    .line 174
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v6

    .line 155
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    if-eqz v0, :cond_1

    .line 159
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 160
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 158
    if-eqz v0, :cond_3

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 160
    const/4 v0, 0x0

    .line 162
    :cond_3
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 164
    .end local v0           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 166
    .local v1, e:Landroid/database/SQLException;
    :try_start_5
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 170
    const/4 v2, 0x0

    goto :goto_1

    .line 167
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_1
    move-exception v7

    .line 168
    if-eqz v2, :cond_4

    .line 169
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 170
    const/4 v2, 0x0

    .line 172
    :cond_4
    throw v7
.end method

.method public getUserData()Landroid/content/ContentValues;
    .locals 12

    .prologue
    .line 93
    const/4 v9, 0x0

    .line 94
    .local v9, userdata:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 96
    .local v4, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    .end local v9           #userdata:Landroid/content/ContentValues;
    .local v10, userdata:Landroid/content/ContentValues;
    :try_start_1
    new-instance v5, Lcom/ub/main/util/SqlDbHelper;

    iget-object v11, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 98
    .end local v4           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .local v5, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_2
    invoke-virtual {v5}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 99
    invoke-virtual {v5}, Lcom/ub/main/util/SqlDbHelper;->fetchAllUserData()Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 101
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 102
    .local v8, rows:I
    if-lez v8, :cond_0

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    const-string v11, "username"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, name:Ljava/lang/String;
    const-string v11, "userpwd"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, pwd:Ljava/lang/String;
    const-string v11, "learnpwd"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, learnpwd:Ljava/lang/String;
    const-string v11, "autologin"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, autologin:Ljava/lang/String;
    const-string v11, "username"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v11, "userpwd"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v11, "learnpwd"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v11, "autologin"

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 118
    .end local v0           #autologin:Ljava/lang/String;
    .end local v3           #learnpwd:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #pwd:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 119
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 120
    const/4 v1, 0x0

    .line 126
    .end local v8           #rows:I
    :cond_1
    :goto_0
    if-eqz v5, :cond_5

    .line 127
    invoke-virtual {v5}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 128
    const/4 v4, 0x0

    .end local v5           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v4       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    move-object v9, v10

    .line 131
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v10           #userdata:Landroid/content/ContentValues;
    .restart local v9       #userdata:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-object v9

    .line 114
    .end local v4           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .end local v9           #userdata:Landroid/content/ContentValues;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v5       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v10       #userdata:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    if-eqz v1, :cond_1

    .line 119
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 120
    const/4 v1, 0x0

    goto :goto_0

    .line 117
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 118
    if-eqz v1, :cond_3

    .line 119
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 120
    const/4 v1, 0x0

    .line 122
    :cond_3
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 123
    .end local v1           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v4       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    move-object v9, v10

    .line 124
    .end local v10           #userdata:Landroid/content/ContentValues;
    .local v2, e:Landroid/database/SQLException;
    .restart local v9       #userdata:Landroid/content/ContentValues;
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 126
    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v4}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 128
    const/4 v4, 0x0

    goto :goto_1

    .line 125
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_1
    move-exception v11

    .line 126
    :goto_3
    if-eqz v4, :cond_4

    .line 127
    invoke-virtual {v4}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 128
    const/4 v4, 0x0

    .line 130
    :cond_4
    throw v11

    .line 125
    .end local v9           #userdata:Landroid/content/ContentValues;
    .restart local v10       #userdata:Landroid/content/ContentValues;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10           #userdata:Landroid/content/ContentValues;
    .restart local v9       #userdata:Landroid/content/ContentValues;
    goto :goto_3

    .end local v4           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .end local v9           #userdata:Landroid/content/ContentValues;
    .restart local v5       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v10       #userdata:Landroid/content/ContentValues;
    :catchall_3
    move-exception v11

    move-object v4, v5

    .end local v5           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v4       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    move-object v9, v10

    .end local v10           #userdata:Landroid/content/ContentValues;
    .restart local v9       #userdata:Landroid/content/ContentValues;
    goto :goto_3

    .line 123
    :catch_2
    move-exception v2

    goto :goto_2

    .end local v9           #userdata:Landroid/content/ContentValues;
    .restart local v10       #userdata:Landroid/content/ContentValues;
    :catch_3
    move-exception v2

    move-object v9, v10

    .end local v10           #userdata:Landroid/content/ContentValues;
    .restart local v9       #userdata:Landroid/content/ContentValues;
    goto :goto_2

    .end local v4           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .end local v9           #userdata:Landroid/content/ContentValues;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v5       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v10       #userdata:Landroid/content/ContentValues;
    :cond_5
    move-object v4, v5

    .end local v5           #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    .restart local v4       #myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    move-object v9, v10

    .end local v10           #userdata:Landroid/content/ContentValues;
    .restart local v9       #userdata:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method public getUserPwdData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    .line 247
    const-string v3, ""

    .line 248
    .local v3, pwd:Ljava/lang/String;
    new-instance v2, Lcom/ub/main/util/SqlDbHelper;

    iget-object v5, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V

    .line 250
    .local v2, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_0
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 251
    invoke-virtual {v2, p1}, Lcom/ub/main/util/SqlDbHelper;->fetchRemerberPwdData(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 253
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 254
    .local v4, rows:I
    if-lez v4, :cond_0

    .line 255
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    const-string v5, "userpwd"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 256
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 263
    :cond_0
    if-eqz v0, :cond_1

    .line 264
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    .end local v4           #rows:I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 277
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v3

    .line 259
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    if-eqz v0, :cond_1

    .line 264
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 268
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 270
    .local v1, e:Landroid/database/SQLException;
    :try_start_5
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 272
    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    goto :goto_1

    .line 262
    .end local v1           #e:Landroid/database/SQLException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    .line 263
    if-eqz v0, :cond_3

    .line 264
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_3
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 271
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    .line 272
    if-eqz v2, :cond_4

    .line 273
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 275
    :cond_4
    throw v5
.end method

.method public saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "iName"
    .parameter "iPwd"
    .parameter "iLearnPwd"
    .parameter "iAutoLogin"

    .prologue
    .line 32
    new-instance v2, Lcom/ub/main/util/SqlDbHelper;

    iget-object v3, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V

    .line 35
    .local v2, sqlDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_0
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 36
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->updateAutoLoginData()Z

    .line 37
    invoke-virtual {v2, p1}, Lcom/ub/main/util/SqlDbHelper;->fetchUserData(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 39
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 40
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/ub/main/util/SqlDbHelper;->updateUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_0
    if-eqz v0, :cond_0

    .line 48
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 49
    const/4 v0, 0x0

    .line 57
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 59
    const/4 v2, 0x0

    .line 62
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_2
    return-void

    .line 42
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_3
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/ub/main/util/SqlDbHelper;->insertUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    const/4 v0, 0x0

    goto :goto_1

    .line 46
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 47
    if-eqz v0, :cond_3

    .line 48
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    const/4 v0, 0x0

    .line 51
    :cond_3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 53
    .end local v0           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 55
    .local v1, e:Landroid/database/SQLException;
    :try_start_6
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 57
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 59
    const/4 v2, 0x0

    goto :goto_2

    .line 56
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_1
    move-exception v3

    .line 57
    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {v2}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 59
    const/4 v2, 0x0

    .line 61
    :cond_4
    throw v3
.end method

.method public updateAutoLoginState()V
    .locals 3

    .prologue
    .line 205
    new-instance v1, Lcom/ub/main/util/SqlDbHelper;

    iget-object v2, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_0
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 208
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->updateAutoLoginData()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    goto :goto_0

    .line 212
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 213
    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 216
    :cond_1
    throw v2
.end method

.method public updateLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "pwd"
    .parameter "learnpwd"
    .parameter "autologin"

    .prologue
    .line 187
    new-instance v1, Lcom/ub/main/util/SqlDbHelper;

    iget-object v2, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V

    .line 189
    .local v1, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_0
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 190
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ub/main/util/SqlDbHelper;->updateUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    goto :goto_0

    .line 194
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 195
    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 198
    :cond_1
    throw v2
.end method

.method public updateRemPwdState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "flag"

    .prologue
    .line 226
    new-instance v1, Lcom/ub/main/util/SqlDbHelper;

    iget-object v2, p0, Lcom/ub/main/data/UserDataManage;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V

    .line 228
    .local v1, myDbHelper:Lcom/ub/main/util/SqlDbHelper;
    :try_start_0
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 229
    invoke-virtual {v1, p1, p2}, Lcom/ub/main/util/SqlDbHelper;->updateRemPwdData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    goto :goto_0

    .line 233
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 234
    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v1}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 237
    :cond_1
    throw v2
.end method
