.class public Lcom/ub/main/LaunchActivity;
.super Lcom/ub/main/BaseActivity;
.source "LaunchActivity.java"


# static fields
.field public static final LAUNCH_TIME:J = 0x3e8L


# instance fields
.field private LATITUDE:D

.field private LONGITUDE:D

.field private handler:Landroid/os/Handler;

.field private isEnter:Z

.field private location:Landroid/location/Location;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private quited:Z

.field private userDataManage:Lcom/ub/main/data/UserDataManage;

.field private username:Ljava/lang/String;

.field private userpwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 66
    iput-wide v0, p0, Lcom/ub/main/LaunchActivity;->LONGITUDE:D

    .line 70
    iput-wide v0, p0, Lcom/ub/main/LaunchActivity;->LATITUDE:D

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/LaunchActivity;->quited:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/LaunchActivity;->userpwd:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/LaunchActivity;->isEnter:Z

    .line 290
    new-instance v0, Lcom/ub/main/LaunchActivity$1;

    invoke-direct {v0, p0}, Lcom/ub/main/LaunchActivity$1;-><init>(Lcom/ub/main/LaunchActivity;)V

    iput-object v0, p0, Lcom/ub/main/LaunchActivity;->locationListener:Landroid/location/LocationListener;

    .line 450
    new-instance v0, Lcom/ub/main/LaunchActivity$2;

    invoke-direct {v0, p0}, Lcom/ub/main/LaunchActivity$2;-><init>(Lcom/ub/main/LaunchActivity;)V

    iput-object v0, p0, Lcom/ub/main/LaunchActivity;->handler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/LaunchActivity;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/ub/main/LaunchActivity;->LATITUDE:D

    return-void
.end method

.method static synthetic access$1(Lcom/ub/main/LaunchActivity;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/ub/main/LaunchActivity;->LONGITUDE:D

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/LaunchActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/ub/main/LaunchActivity;->LATITUDE:D

    return-wide v0
.end method

.method static synthetic access$3(Lcom/ub/main/LaunchActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/ub/main/LaunchActivity;->LONGITUDE:D

    return-wide v0
.end method

.method static synthetic access$4(Lcom/ub/main/LaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/ub/main/LaunchActivity;->autoLogin()V

    return-void
.end method

.method static synthetic access$5(Lcom/ub/main/LaunchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ub/main/LaunchActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ub/main/LaunchActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->userpwd:Ljava/lang/String;

    return-object v0
.end method

.method private autoLogin()V
    .locals 5

    .prologue
    .line 200
    new-instance v3, Lcom/ub/main/data/UserDataManage;

    invoke-direct {v3, p0}, Lcom/ub/main/data/UserDataManage;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ub/main/LaunchActivity;->userDataManage:Lcom/ub/main/data/UserDataManage;

    .line 201
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->userDataManage:Lcom/ub/main/data/UserDataManage;

    invoke-virtual {v3}, Lcom/ub/main/data/UserDataManage;->getUserData()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "autologin"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    .local v0, autoFlag:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    if-eq v0, v3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/ub/main/util/UIConfig;->AUTO_LOGIN_FLAG:I

    .line 203
    :cond_0
    sget v3, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    sget v4, Lcom/ub/main/util/UIConfig;->TRUE:I

    if-ne v3, v4, :cond_1

    .line 204
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->userDataManage:Lcom/ub/main/data/UserDataManage;

    invoke-virtual {v3}, Lcom/ub/main/data/UserDataManage;->getUserData()Landroid/content/ContentValues;

    move-result-object v1

    .line 205
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 206
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->userDataManage:Lcom/ub/main/data/UserDataManage;

    invoke-virtual {v3}, Lcom/ub/main/data/UserDataManage;->getUserData()Landroid/content/ContentValues;

    move-result-object v3

    .line 207
    const-string v4, "username"

    .line 206
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->userDataManage:Lcom/ub/main/data/UserDataManage;

    invoke-virtual {v3}, Lcom/ub/main/data/UserDataManage;->getUserData()Landroid/content/ContentValues;

    move-result-object v3

    .line 209
    const-string v4, "userpwd"

    .line 208
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/ub/main/LaunchActivity;->userpwd:Ljava/lang/String;

    .line 214
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_1
    sget v3, Lcom/ub/main/util/UIConfig;->AUTO_LOGIN_FLAG:I

    sget v4, Lcom/ub/main/util/UIConfig;->TRUE:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 215
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->userpwd:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 218
    const v2, 0x7fffffff

    .line 220
    .local v2, entrance:I
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/ub/main/util/Tool;->isMobile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    const/4 v2, 0x1

    .line 226
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->userpwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 227
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/ub/main/LaunchActivity;->userpwd:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v2}, Lcom/ub/main/LaunchActivity;->login(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    .end local v2           #entrance:I
    :cond_3
    :goto_1
    return-void

    .line 222
    .restart local v2       #entrance:I
    :cond_4
    iget-object v3, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/ub/main/util/Tool;->isEmail(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const/4 v2, 0x0

    goto :goto_0

    .line 229
    :cond_5
    iget-boolean v3, p0, Lcom/ub/main/LaunchActivity;->quited:Z

    if-nez v3, :cond_3

    .line 230
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ub/main/login/LoginUI;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/ub/main/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->finish()V

    goto :goto_1

    .line 235
    .end local v2           #entrance:I
    :cond_6
    iget-boolean v3, p0, Lcom/ub/main/LaunchActivity;->quited:Z

    if-nez v3, :cond_3

    .line 236
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ub/main/login/LoginUI;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/ub/main/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->finish()V

    goto :goto_1
.end method

.method private getGps()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 259
    invoke-direct {p0}, Lcom/ub/main/LaunchActivity;->toggleGPS()V

    .line 261
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/ub/main/LaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 260
    iput-object v0, p0, Lcom/ub/main/LaunchActivity;->locationManager:Landroid/location/LocationManager;

    .line 264
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 265
    .local v6, criteria:Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 266
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 267
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 268
    invoke-virtual {v6, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 269
    invoke-virtual {v6, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 271
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, provider:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 273
    const-string v7, "gps"

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/LaunchActivity;->location:Landroid/location/Location;

    .line 275
    iput-wide v2, p0, Lcom/ub/main/LaunchActivity;->LONGITUDE:D

    iput-wide v2, p0, Lcom/ub/main/LaunchActivity;->LATITUDE:D

    .line 276
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->location:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ub/main/LaunchActivity;->LATITUDE:D

    .line 278
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ub/main/LaunchActivity;->LONGITUDE:D

    .line 279
    iget-wide v0, p0, Lcom/ub/main/LaunchActivity;->LATITUDE:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, " "

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ub/main/util/NetConfig;->LATITUDE:Ljava/lang/String;

    .line 280
    iget-wide v0, p0, Lcom/ub/main/LaunchActivity;->LONGITUDE:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, " "

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ub/main/util/NetConfig;->LONGITUDE:Ljava/lang/String;

    .line 285
    :goto_2
    return-void

    .line 279
    :cond_1
    iget-wide v0, p0, Lcom/ub/main/LaunchActivity;->LATITUDE:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_2
    iget-wide v0, p0, Lcom/ub/main/LaunchActivity;->LONGITUDE:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->locationManager:Landroid/location/LocationManager;

    .line 284
    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ub/main/LaunchActivity;->locationListener:Landroid/location/LocationListener;

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_2
.end method

.method private getMacAdd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 139
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/ub/main/LaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 140
    .local v3, wifi:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    const-string v4, "macAddress"

    .line 142
    invoke-virtual {p0, v4, v5}, Lcom/ub/main/LaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, sharedata:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    .line 145
    .local v0, num:I
    if-lez v0, :cond_0

    .line 146
    const-string v4, "mac"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/UIConfig;->setPHONE_MAC_ADDRESS(Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-static {}, Lcom/ub/main/util/UIConfig;->getPHONE_MAC_ADDRESS()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/ub/main/util/UIConfig;->getPHONE_MAC_ADDRESS()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 150
    new-instance v4, Lcom/ub/main/LaunchActivity$3;

    invoke-direct {v4, p0, v3}, Lcom/ub/main/LaunchActivity$3;-><init>(Lcom/ub/main/LaunchActivity;Landroid/net/wifi/WifiManager;)V

    .line 182
    invoke-virtual {v4}, Lcom/ub/main/LaunchActivity$3;->start()V

    .line 194
    .end local v0           #num:I
    .end local v1           #sharedata:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 184
    .restart local v0       #num:I
    .restart local v1       #sharedata:Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0}, Lcom/ub/main/LaunchActivity;->autoLogin()V

    goto :goto_0

    .line 187
    .end local v0           #num:I
    .end local v1           #sharedata:Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/Tool;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/UIConfig;->setPHONE_MAC_ADDRESS(Ljava/lang/String;)V

    .line 189
    const-string v4, "macAddress"

    invoke-virtual {p0, v4, v5}, Lcom/ub/main/LaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 190
    .local v2, userData:Landroid/content/SharedPreferences$Editor;
    const-string v4, "mac"

    invoke-static {}, Lcom/ub/main/util/UIConfig;->getPHONE_MAC_ADDRESS()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    invoke-direct {p0}, Lcom/ub/main/LaunchActivity;->autoLogin()V

    goto :goto_0
.end method

.method private login(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "account"
    .parameter "password"
    .parameter "accountType"

    .prologue
    .line 250
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->LOGIN:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 251
    invoke-static {p1, p2, p3}, Lcom/ub/main/util/NetConfig;->creatLoginPostString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 252
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 250
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/LaunchActivity;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private startAPNS()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.apns.APNService.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ch"

    const-string v2, "CH897851"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "devId"

    invoke-static {p0}, Lcom/ub/main/util/Tool;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/ub/main/LaunchActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    return-void
.end method

.method private toggleGPS()V
    .locals 5

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 318
    const-string v4, "location_providers_allowed"

    .line 317
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 321
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v1, gpsIntent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    .line 323
    const-string v4, "com.android.settings.widget.SettingsAppWidgetProvider"

    .line 322
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v3, "custom:3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 327
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1           #gpsIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 328
    .restart local v1       #gpsIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p2

    .line 358
    .local v0, code:Ljava/lang/String;
    iget-object v1, p0, Lcom/ub/main/LaunchActivity;->jsonObject:Lorg/json/JSONObject;

    .line 359
    .local v1, json:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/ub/main/LaunchActivity;->update:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ub/main/LaunchActivity;->isEnter:Z

    .line 361
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 363
    const-string v3, "\u5ba2\u6237\u7aef\u6709\u65b0\u7248\u672c\uff0c\u5efa\u8bae\u60a8\u5347\u7ea7\u540e\u4f7f\u7528\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 364
    new-instance v3, Lcom/ub/main/LaunchActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/ub/main/LaunchActivity$4;-><init>(Lcom/ub/main/LaunchActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 384
    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/ub/main/LaunchActivity$5;

    invoke-direct {v4, p0, v0, v1}, Lcom/ub/main/LaunchActivity$5;-><init>(Lcom/ub/main/LaunchActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 403
    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/ub/main/LaunchActivity$6;

    invoke-direct {v4, p0}, Lcom/ub/main/LaunchActivity$6;-><init>(Lcom/ub/main/LaunchActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 424
    :cond_0
    iget-boolean v2, p0, Lcom/ub/main/LaunchActivity;->isEnter:Z

    if-eqz v2, :cond_1

    .line 425
    const-string v2, "200"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    iget-object v2, p0, Lcom/ub/main/LaunchActivity;->username:Ljava/lang/String;

    sput-object v2, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lcom/ub/main/LaunchActivity;->userpwd:Ljava/lang/String;

    sput-object v2, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    .line 428
    iget-object v2, p0, Lcom/ub/main/LaunchActivity;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v2

    sput-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 429
    const-class v2, Lcom/ub/main/Hall;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;I)V

    .line 434
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    const-class v2, Lcom/ub/main/login/LoginUI;

    invoke-static {p0, v2}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->dismissLoadingDialog()V

    .line 439
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef\uff01"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    const-class v0, Lcom/ub/main/login/LoginUI;

    invoke-static {p0, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 441
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 445
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 446
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->finish()V

    .line 447
    const/4 v0, 0x0

    sput-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 448
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/ub/main/LaunchActivity;->requestWindowFeature(I)Z

    .line 101
    const-string v5, "LaunchActivity"

    iput-object v5, p0, Lcom/ub/main/LaunchActivity;->TAG:Ljava/lang/String;

    .line 102
    const v5, 0x7f030031

    invoke-virtual {p0, v5}, Lcom/ub/main/LaunchActivity;->setContentView(I)V

    .line 104
    invoke-direct {p0}, Lcom/ub/main/LaunchActivity;->startAPNS()V

    .line 108
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 109
    .local v4, sdRoot:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/ub/main/util/UIConfig;->SDCARD_DIR:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ub/main/util/UIConfig;->SDCARD_DIR:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/ubox/.image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    sget v6, Lcom/ub/main/util/UIConfig;->IMAGE_MAX_NUM:I

    if-lt v5, v6, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 114
    .local v2, files:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 120
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 121
    .local v1, fileRoot:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/ub/main/util/UIConfig;->PRIVATE_DIR:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 123
    sput v5, Lcom/ub/main/util/UIConfig;->SCREEN_WIDTH:I

    .line 125
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 126
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 125
    sput v5, Lcom/ub/main/util/UIConfig;->SCREEN_HEIGHT:I

    .line 128
    invoke-direct {p0}, Lcom/ub/main/LaunchActivity;->getMacAdd()V

    .line 132
    invoke-direct {p0}, Lcom/ub/main/LaunchActivity;->getGps()V

    .line 133
    return-void

    .line 115
    .end local v1           #fileRoot:Ljava/io/File;
    .restart local v2       #files:[Ljava/io/File;
    .restart local v3       #i:I
    :cond_1
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/ub/main/LaunchActivity;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ub/main/LaunchActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 337
    iput-object v2, p0, Lcom/ub/main/LaunchActivity;->locationListener:Landroid/location/LocationListener;

    .line 338
    iput-object v2, p0, Lcom/ub/main/LaunchActivity;->locationManager:Landroid/location/LocationManager;

    .line 339
    iput-object v2, p0, Lcom/ub/main/LaunchActivity;->location:Landroid/location/Location;

    .line 341
    :cond_0
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 342
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onStart()V

    .line 347
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 348
    .local v0, flag:I
    const/high16 v1, 0x400

    if-ne v0, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/ub/main/LaunchActivity;->finish()V

    .line 351
    const/4 v1, 0x0

    sput-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 353
    :cond_0
    return-void
.end method
