.class public Lcom/apns/APNSAgent;
.super Ljava/lang/Object;
.source "APNSAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apns/APNSAgent$PingTask;
    }
.end annotation


# static fields
.field private static final APNS_ADDR:Ljava/lang/String; = "61.188.39.29"

.field private static final APNS_PORT:I = 0x75c


# instance fields
.field private PING_INTERVAL:I

.field private PING_TIMEOUT:I

.field private _mConnection:Lcom/apns/APNSConnection;

.field private _mContext:Landroid/content/Context;

.field private _mDevId:Ljava/lang/String;

.field private _mGroup:Ljava/lang/String;

.field private _mPingTime:J

.field private _mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "group"
    .parameter "devId"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/apns/APNSAgent;->_mGroup:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/apns/APNSAgent;->_mDevId:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apns/APNSAgent;->_mPingTime:J

    .line 26
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/apns/APNSAgent;->PING_INTERVAL:I

    .line 27
    iget v0, p0, Lcom/apns/APNSAgent;->PING_INTERVAL:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/apns/APNSAgent;->PING_TIMEOUT:I

    .line 34
    if-eqz p2, :cond_0

    const-string v0, ""

    if-ne p2, v0, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "argument error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/apns/APNSAgent;->onErr(Ljava/lang/Exception;)V

    .line 37
    :cond_1
    if-eqz p3, :cond_2

    const-string v0, ""

    if-ne p3, v0, :cond_3

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "argument error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/apns/APNSAgent;->onErr(Ljava/lang/Exception;)V

    .line 42
    :cond_3
    new-instance v0, Lcom/apns/APNSConnection;

    const-string v1, "61.188.39.29"

    const/16 v2, 0x75c

    invoke-direct {v0, v1, v2}, Lcom/apns/APNSConnection;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/apns/APNSAgent;->_mConnection:Lcom/apns/APNSConnection;

    .line 43
    iget-object v0, p0, Lcom/apns/APNSAgent;->_mConnection:Lcom/apns/APNSConnection;

    invoke-virtual {v0, p0}, Lcom/apns/APNSConnection;->setAgent(Lcom/apns/APNSAgent;)V

    .line 44
    iput-object p1, p0, Lcom/apns/APNSAgent;->_mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/apns/APNSAgent;->_mGroup:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/apns/APNSAgent;->_mDevId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/apns/APNSAgent;)J
    .locals 2
    .parameter

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/apns/APNSAgent;->_mPingTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/apns/APNSAgent;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/apns/APNSAgent;->PING_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2(Lcom/apns/APNSAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/apns/APNSAgent;->doConnect()V

    return-void
.end method

.method private doConnect()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/apns/APNSAgent;->_mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 93
    iget-object v1, p0, Lcom/apns/APNSAgent;->_mConnection:Lcom/apns/APNSConnection;

    invoke-virtual {v1}, Lcom/apns/APNSConnection;->close()V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/apns/APNSAgent;->_mConnection:Lcom/apns/APNSConnection;

    invoke-virtual {v1}, Lcom/apns/APNSConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t connect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onEcho()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apns/APNSAgent;->_mPingTime:J

    .line 87
    iget-object v0, p0, Lcom/apns/APNSAgent;->_mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 88
    const-string v0, "APNSAgent.onEcho"

    invoke-virtual {p0, v0}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public checkConnection()V
    .locals 6

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apns/APNSAgent;->_mPingTime:J

    .line 51
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apns/APNSAgent;->_mTimer:Ljava/util/Timer;

    .line 52
    iget-object v0, p0, Lcom/apns/APNSAgent;->_mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/apns/APNSAgent$PingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/apns/APNSAgent$PingTask;-><init>(Lcom/apns/APNSAgent;Lcom/apns/APNSAgent$PingTask;)V

    const-wide/16 v2, 0x1

    iget v4, p0, Lcom/apns/APNSAgent;->PING_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 53
    return-void
.end method

.method public getLastPing()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/apns/APNSAgent;->_mPingTime:J

    return-wide v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 147
    return-void
.end method

.method public onAuthorized()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onConnected()V
    .locals 5

    .prologue
    .line 102
    const-string v3, "APNSAgent.onConnected"

    invoke-virtual {p0, v3}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x3

    .line 104
    .local v2, type:B
    iget-object v3, p0, Lcom/apns/APNSAgent;->_mGroup:Ljava/lang/String;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/apns/APNSAgent;->_mDevId:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_1

    .line 105
    :cond_0
    const-string v3, "APNSAgent.onConnected(),paramter err"

    invoke-virtual {p0, v3}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apns/APNSAgent;->_mGroup:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/apns/APNSAgent;->_mDevId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":anonymous:a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, mbody:Ljava/lang/String;
    new-instance v0, Lcom/apns/APNSMessage;

    invoke-direct {v0, v2, v1}, Lcom/apns/APNSMessage;-><init>(BLjava/lang/String;)V

    .line 110
    .local v0, m:Lcom/apns/APNSMessage;
    iget-object v3, p0, Lcom/apns/APNSAgent;->_mConnection:Lcom/apns/APNSConnection;

    invoke-virtual {v3, v0}, Lcom/apns/APNSConnection;->send(Lcom/apns/APNSMessage;)V

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APNSAgent.send:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "APNSAgent.onDisconnect()"

    invoke-virtual {p0, v0}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onErr(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 150
    return-void
.end method

.method public onRecvMessage(Lcom/apns/APNSMessage;)V
    .locals 6
    .parameter "m"

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/apns/APNSMessage;->getType()B

    move-result v3

    .line 116
    .local v3, type:B
    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/apns/APNSMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/apns/APNSAgent;->onAuthorized()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "auth failed"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/apns/APNSAgent;->onErr(Ljava/lang/Exception;)V

    goto :goto_0

    .line 124
    :cond_2
    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 125
    invoke-direct {p0}, Lcom/apns/APNSAgent;->onEcho()V

    goto :goto_0

    .line 128
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.apnsd.APNService.NOTIFICATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/apns/APNSMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, str:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, arr:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 132
    const-string v4, "id"

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v4, "data"

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v4, p0, Lcom/apns/APNSAgent;->_mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected ping()Z
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/apns/APNSAgent;->_mConnection:Lcom/apns/APNSConnection;

    invoke-virtual {v1}, Lcom/apns/APNSConnection;->isConnected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/apns/APNSAgent;->_mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 63
    invoke-direct {p0}, Lcom/apns/APNSAgent;->doConnect()V

    .line 64
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 66
    :cond_0
    new-instance v0, Lcom/apns/APNSMessage;

    const/4 v1, 0x6

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lcom/apns/APNSMessage;-><init>(BLjava/lang/String;)V

    .line 67
    .local v0, m:Lcom/apns/APNSMessage;
    iget-object v1, p0, Lcom/apns/APNSAgent;->_mConnection:Lcom/apns/APNSConnection;

    invoke-virtual {v1, v0}, Lcom/apns/APNSConnection;->send(Lcom/apns/APNSMessage;)V

    .line 68
    const-string v1, "APNSAgent.ping..."

    invoke-virtual {p0, v1}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "APNSAgent.shutdown"

    invoke-virtual {p0, v0}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/apns/APNSAgent;->_mConnection:Lcom/apns/APNSConnection;

    invoke-virtual {v0}, Lcom/apns/APNSConnection;->close()V

    .line 58
    return-void
.end method
