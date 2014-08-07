.class public Lcom/ub/main/uplus/UPlusTaskCell;
.super Ljava/lang/Object;
.source "UPlusTaskCell.java"


# instance fields
.field private appInfo:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private appUrl:Ljava/lang/String;

.field private couponInfo:Ljava/lang/String;

.field private downLoaded:Z

.field private hasUseCount:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private isNow:Ljava/lang/String;

.field private receive_count:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    :try_start_0
    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->taskId:Ljava/lang/String;

    .line 19
    const-string v1, "icon_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->iconUrl:Ljava/lang/String;

    .line 20
    const-string v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->appUrl:Ljava/lang/String;

    .line 21
    const-string v1, "app_title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->appName:Ljava/lang/String;

    .line 22
    const-string v1, "app_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->appPackageName:Ljava/lang/String;

    .line 23
    const-string v1, "app_desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->appInfo:Ljava/lang/String;

    .line 24
    const-string v1, "present_desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->couponInfo:Ljava/lang/String;

    .line 25
    const-string v1, "use_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->hasUseCount:Ljava/lang/String;

    .line 26
    const-string v1, "is_now"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->isNow:Ljava/lang/String;

    .line 27
    const-string v1, "receive_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->receive_count:Ljava/lang/String;

    .line 28
    const-string v1, "receive_state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->downLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_1
    return-void

    .line 28
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public appInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public appName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public appPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public appUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method public couponInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->couponInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hasUseCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->hasUseCount:Ljava/lang/String;

    return-object v0
.end method

.method public iconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDownLoaded(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->downLoaded:Z

    return v0
.end method

.method public isNow()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->isNow:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->isNow:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receive_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->receive_count:Ljava/lang/String;

    return-object v0
.end method

.method public setDownLoaded(Z)V
    .locals 0
    .parameter "downLoaded"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/ub/main/uplus/UPlusTaskCell;->downLoaded:Z

    .line 78
    return-void
.end method

.method public taskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ub/main/uplus/UPlusTaskCell;->taskId:Ljava/lang/String;

    return-object v0
.end method
