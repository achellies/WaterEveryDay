.class public Lcom/ub/main/util/alipay/MobileSecurePayHelper;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MobileSecurePayHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 34
    iput-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    .line 270
    new-instance v0, Lcom/ub/main/util/alipay/MobileSecurePayHelper$1;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/MobileSecurePayHelper$1;-><init>(Lcom/ub/main/util/alipay/MobileSecurePayHelper;)V

    iput-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mHandler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/util/alipay/MobileSecurePayHelper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .parameter "archiveFilePath"

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 170
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    .line 169
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 171
    .local v0, apkInfo:Landroid/content/pm/PackageInfo;
    return-object v0
.end method


# virtual methods
.method public checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 5
    .parameter "packageInfo"

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 180
    .local v2, url:Ljava/lang/String;
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 182
    .local v1, resp:Lorg/json/JSONObject;
    const-string v3, "needUpdate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const-string v3, "updateUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 190
    .end local v1           #resp:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method closeProgress()V
    .locals 2

    .prologue
    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public detectMobile_sp()Z
    .locals 8

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->isMobile_spExist()Z

    move-result v2

    .line 42
    .local v2, isMobile_spExist:Z
    if-nez v2, :cond_0

    .line 45
    iget-object v3, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, cacheDir:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/temp.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, cachePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    const-string v4, "alipay_plugin231_0901.apk"

    invoke-virtual {p0, v3, v4, v1}, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    iget-object v3, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "\u6b63\u5728\u68c0\u6d4b\u5b89\u5168\u652f\u4ed8\u670d\u52a1\u7248\u672c"

    .line 53
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 52
    invoke-static {v3, v4, v5, v6, v7}, Lcom/ub/main/util/alipay/BaseHelper;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 55
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ub/main/util/alipay/MobileSecurePayHelper$2;

    invoke-direct {v4, p0, v1}, Lcom/ub/main/util/alipay/MobileSecurePayHelper$2;-><init>(Lcom/ub/main/util/alipay/MobileSecurePayHelper;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 77
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v1           #cachePath:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public isMobile_spExist()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v5, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 119
    .local v1, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 126
    :goto_1
    return v4

    .line 121
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 122
    .local v2, pI:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.alipay.android.app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    const/4 v4, 0x1

    goto :goto_1

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "fileName"
    .parameter "path"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 136
    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 138
    .local v5, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 140
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 142
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v6, v7, [B

    .line 143
    .local v6, temp:[B
    const/4 v4, 0x0

    .line 144
    .local v4, i:I
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 148
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 149
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 151
    const/4 v0, 0x1

    .line 157
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #temp:[B
    :goto_1
    return v0

    .line 145
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #i:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #temp:[B
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #temp:[B
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public retrieveApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "strurl"
    .parameter "filename"

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 246
    .local v0, bRet:Z
    :try_start_0
    new-instance v2, Lcom/ub/main/util/alipay/NetworkManager;

    iget-object v3, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ub/main/util/alipay/NetworkManager;-><init>(Landroid/content/Context;)V

    .line 247
    .local v2, nM:Lcom/ub/main/util/alipay/NetworkManager;
    invoke-virtual {v2, p1, p2, p3}, Lcom/ub/main/util/alipay/NetworkManager;->urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 252
    .end local v2           #nM:Lcom/ub/main/util/alipay/NetworkManager;
    :goto_0
    return v0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "versionName"

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 196
    .local v2, objResp:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 197
    .local v3, req:Lorg/json/JSONObject;
    const-string v4, "action"

    const-string v5, "update"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v0, data:Lorg/json/JSONObject;
    const-string v4, "platform"

    const-string v5, "android"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v4, "version"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v4, "partner"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 211
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v3           #req:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "content"

    .prologue
    .line 215
    new-instance v3, Lcom/ub/main/util/alipay/NetworkManager;

    iget-object v5, p0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/ub/main/util/alipay/NetworkManager;-><init>(Landroid/content/Context;)V

    .line 218
    .local v3, nM:Lcom/ub/main/util/alipay/NetworkManager;
    const/4 v1, 0x0

    .line 220
    .local v1, jsonResponse:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 222
    .local v4, response:Ljava/lang/String;
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :try_start_1
    const-string v5, "https://msp.alipay.com/x.htm"

    invoke-virtual {v3, p1, v5}, Lcom/ub/main/util/alipay/NetworkManager;->SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    .local v2, jsonResponse:Lorg/json/JSONObject;
    move-object v1, v2

    .line 233
    .end local v2           #jsonResponse:Lorg/json/JSONObject;
    .restart local v1       #jsonResponse:Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 234
    const-string v5, "MobileSecurePayHelper"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ub/main/util/alipay/BaseHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    return-object v1

    .line 222
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "cachePath"

    .prologue
    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, tDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    const v2, 0x7f060013

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    const v2, 0x7f060014

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 89
    const v1, 0x7f060015

    .line 90
    new-instance v2, Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/ub/main/util/alipay/MobileSecurePayHelper$3;-><init>(Lcom/ub/main/util/alipay/MobileSecurePayHelper;Ljava/lang/String;Landroid/content/Context;)V

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v2, Lcom/ub/main/util/alipay/MobileSecurePayHelper$4;

    invoke-direct {v2, p0}, Lcom/ub/main/util/alipay/MobileSecurePayHelper$4;-><init>(Lcom/ub/main/util/alipay/MobileSecurePayHelper;)V

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    return-void
.end method
