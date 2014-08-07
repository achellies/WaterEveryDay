.class public Lcom/ub/main/util/SqlDbHelper;
.super Ljava/lang/Object;
.source "SqlDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTO_LOGIN_FALSE:Ljava/lang/String; = "0"

.field public static final AUTO_LOGIN_TRUE:Ljava/lang/String; = "1"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table notes (_id integer primary key autoincrement, username text not null, userpwd text not null, learnpwd text not null, nextlogin text not null, autologin text not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "data"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "notes"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final KEY_AUTO:Ljava/lang/String; = "autologin"

.field public static final KEY_LEARNPWD:Ljava/lang/String; = "learnpwd"

.field public static final KEY_NAME:Ljava/lang/String; = "username"

.field public static final KEY_NEXTLOGIN:Ljava/lang/String; = "nextlogin"

.field public static final KEY_PWD:Ljava/lang/String; = "userpwd"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final NEXT_LOGIN_FALSE:Ljava/lang/String; = "0"

.field public static final NEXT_LOGIN_TRUE:Ljava/lang/String; = "1"

.field public static final REMERBER_PWD_FALSE:Ljava/lang/String; = "0"

.field public static final REMERBER_PWD_TRUE:Ljava/lang/String; = "1"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/ub/main/util/SqlDbHelper;->mCtx:Landroid/content/Context;

    .line 82
    return-void
.end method


# virtual methods
.method public clearXYK_Account()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS account_xyk"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public clearZFB_Account()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS account_zfb"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDbHelper:Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;

    invoke-virtual {v0}, Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;->close()V

    .line 100
    return-void
.end method

.method public deleteUserData()Z
    .locals 4

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DROP TABLE IF EXISTS notes"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteUserData(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "username=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteXYK_Account(Ljava/lang/String;)Z
    .locals 4
    .parameter "cardId"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "account_xyk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pt_ActId=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteZFB_Account(Ljava/lang/String;)Z
    .locals 4
    .parameter "accountName"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "account_zfb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchAllUserData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "username"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 153
    const-string v5, "userpwd"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "learnpwd"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "autologin"

    aput-object v5, v2, v3

    const-string v3, "nextlogin=\'1\'"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 152
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAutoLoginUserData()Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 175
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 176
    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "username"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "userpwd"

    aput-object v6, v3, v4

    const-string v4, "autologin=\'1\'"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 175
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 178
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 179
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    :cond_0
    return-object v10
.end method

.method public fetchRemerberPwdData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 234
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 235
    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "username"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "userpwd"

    aput-object v6, v3, v4

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "learnpwd=\'1\' and username=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 234
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 238
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 239
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    :cond_0
    return-object v10
.end method

.method public fetchUserData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 164
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 165
    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "username"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "userpwd"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "username=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 164
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 167
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 168
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    :cond_0
    return-object v10
.end method

.method public getDefaultXYKAccount()Lcom/ub/main/data/CreditCardAccountInfo;
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 386
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pt_ActId"

    aput-object v0, v2, v11

    const-string v0, "password"

    aput-object v0, v2, v12

    const-string v0, "effective"

    aput-object v0, v2, v13

    const-string v0, "lastcode"

    aput-object v0, v2, v14

    const/4 v0, 0x4

    const-string v1, "isdefault"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    .line 387
    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "pd_FrpId"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "cardID"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "phone"

    aput-object v1, v2, v0

    .line 388
    .local v2, col:[Ljava/lang/String;
    const-string v3, "isdefault = 1"

    .line 389
    .local v3, args:Ljava/lang/String;
    const/4 v9, 0x0

    .line 391
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "account_xyk"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 395
    const/4 v8, 0x0

    .line 396
    .local v8, account:Lcom/ub/main/data/CreditCardAccountInfo;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v8, Lcom/ub/main/data/CreditCardAccountInfo;

    .end local v8           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    invoke-direct {v8}, Lcom/ub/main/data/CreditCardAccountInfo;-><init>()V

    .line 401
    .restart local v8       #account:Lcom/ub/main/data/CreditCardAccountInfo;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardNumber(Ljava/lang/String;)V

    .line 402
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setPassword(Ljava/lang/String;)V

    .line 403
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setEffcetiveTime(Ljava/lang/String;)V

    .line 404
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setLastThreeCode(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setDefault(I)V

    .line 406
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setName(Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x6

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setBank(I)V

    .line 408
    const/4 v0, 0x7

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardId(Ljava/lang/String;)V

    .line 409
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setPhone(Ljava/lang/String;)V

    .line 413
    .end local v8           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    :cond_0
    :goto_0
    return-object v8

    .line 392
    :catch_0
    move-exception v10

    .line 393
    .local v10, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getXYK_Account()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/CreditCardAccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/CreditCardAccountInfo;>;"
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "pt_ActId"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "effective"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "lastcode"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "isdefault"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    .line 425
    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "pd_FrpId"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "cardID"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "phone"

    aput-object v1, v2, v0

    .line 428
    .local v2, col:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "account_xyk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 434
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    const/4 v11, 0x0

    .line 437
    .local v11, index:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #index:I
    :cond_0
    :goto_1
    return-object v12

    .line 429
    :catch_0
    move-exception v10

    .line 430
    .local v10, e:Ljava/lang/Exception;
    goto :goto_1

    .line 439
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #index:I
    :cond_1
    new-instance v8, Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-direct {v8}, Lcom/ub/main/data/CreditCardAccountInfo;-><init>()V

    .line 440
    .local v8, account:Lcom/ub/main/data/CreditCardAccountInfo;
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardNumber(Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setPassword(Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setEffcetiveTime(Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setLastThreeCode(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setDefault(I)V

    .line 445
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setName(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x6

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setBank(I)V

    .line 447
    const/4 v0, 0x7

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardId(Ljava/lang/String;)V

    .line 448
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/CreditCardAccountInfo;->setPhone(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public getZFB_Account()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/AlipayAccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 296
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/AlipayAccountInfo;>;"
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account"

    aput-object v0, v2, v12

    const-string v0, "password"

    aput-object v0, v2, v13

    const-string v0, "isdefault"

    aput-object v0, v2, v14

    .line 299
    .local v2, col:[Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "account_zfb"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 301
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 303
    const/4 v10, 0x0

    .line 304
    .local v10, index:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    .end local v10           #index:I
    :cond_0
    return-object v11

    .line 306
    .restart local v10       #index:I
    :cond_1
    new-instance v8, Lcom/ub/main/data/AlipayAccountInfo;

    invoke-direct {v8}, Lcom/ub/main/data/AlipayAccountInfo;-><init>()V

    .line 307
    .local v8, account:Lcom/ub/main/data/AlipayAccountInfo;
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/AlipayAccountInfo;->setAccount(Ljava/lang/String;)V

    .line 308
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/AlipayAccountInfo;->setPassWord(Ljava/lang/String;)V

    .line 309
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-virtual {v8, v0}, Lcom/ub/main/data/AlipayAccountInfo;->setDefault(I)V

    .line 310
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public insertUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "name"
    .parameter "pwd"
    .parameter "learnpwd"
    .parameter "autologin"

    .prologue
    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "userpwd"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "learnpwd"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "autologin"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "nextlogin"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertXYK_Account(Lcom/ub/main/data/CreditCardAccountInfo;)Z
    .locals 5
    .parameter "account"

    .prologue
    .line 325
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "pt_ActId"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v1, "effective"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getEffcetiveTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "lastcode"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getLastThreeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "isdefault"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getDefault()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "pd_FrpId"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getBank()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v1, "cardID"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "phone"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "account_xyk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertZFB_Account(Lcom/ub/main/data/AlipayAccountInfo;)Z
    .locals 5
    .parameter "account"

    .prologue
    .line 251
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/ub/main/data/AlipayAccountInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/ub/main/data/AlipayAccountInfo;->getPassWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "isdefault"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/ub/main/data/AlipayAccountInfo;->getDefault()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "account_zfb"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open()Lcom/ub/main/util/SqlDbHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;

    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDbHelper:Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;

    .line 93
    iget-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDbHelper:Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;

    invoke-virtual {v0}, Lcom/ub/main/util/SqlDbHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    return-object p0
.end method

.method public updateAutoLoginData()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "autologin"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "nextlogin"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updatePwd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "name"
    .parameter "pwd"

    .prologue
    .line 225
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "userpwd"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "username=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    const/4 v4, 0x0

    .line 228
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateRemPwdData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "name"
    .parameter "learnpwd"

    .prologue
    .line 216
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "learnpwd"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "username=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    const/4 v4, 0x0

    .line 219
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "name"
    .parameter "pwd"
    .parameter "learnpwd"
    .parameter "autologin"

    .prologue
    .line 193
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "userpwd"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "learnpwd"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "autologin"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "nextlogin"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "username=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    const/4 v4, 0x0

    .line 200
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateXYK_Account(Lcom/ub/main/data/CreditCardAccountInfo;)Z
    .locals 7
    .parameter "account"

    .prologue
    .line 360
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .local v1, initialValues:Landroid/content/ContentValues;
    const-string v3, "pt_ActId"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v3, "password"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v3, "effective"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getEffcetiveTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v3, "lastcode"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getLastThreeCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v3, "isdefault"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getDefault()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v3, "pd_FrpId"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getBank()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v3, "cardID"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v3, "phone"

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v2, 0x0

    .line 373
    .local v2, success:Z
    :try_start_0
    iget-object v3, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "account_xyk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pt_ActId=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    const/4 v6, 0x0

    .line 373
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 378
    :goto_0
    return v2

    .line 373
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateZFB_Account(Lcom/ub/main/data/AlipayAccountInfo;)Z
    .locals 5
    .parameter "account"

    .prologue
    .line 281
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/ub/main/data/AlipayAccountInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/ub/main/data/AlipayAccountInfo;->getPassWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "isdefault"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/ub/main/data/AlipayAccountInfo;->getDefault()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    iget-object v1, p0, Lcom/ub/main/util/SqlDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "account_zfb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "account=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ub/main/data/AlipayAccountInfo;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    const/4 v4, 0x0

    .line 286
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
