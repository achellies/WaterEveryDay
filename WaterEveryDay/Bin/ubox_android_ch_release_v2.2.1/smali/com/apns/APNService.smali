.class public Lcom/apns/APNService;
.super Landroid/app/Service;
.source "APNService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apns/APNService$MyAgent;
    }
.end annotation


# static fields
.field private static final ACTION_RECONNECT:Ljava/lang/String; = "com.apns.APNService.RECONNECT"

.field protected static final INITIAL_RETRY_INTERVAL:J = 0x668a0L

.field protected static final MAXIMUM_RETRY_INTERVAL:J = 0x668a0L

.field public static final ON_NOTIFICATION:Ljava/lang/String; = "com.apnsd.APNService.NOTIFICATION"

.field public static final OPT_NO_SLEEP_MODE:I = 0x0

.field public static final OPT_SLEEP_MODE:I = 0x1

.field private static final PREF_RETRY:Ljava/lang/String; = "retryInterval"

.field private static final PREF_STATE:Ljava/lang/String; = "apns_state"

.field public static final START:Ljava/lang/String; = "com.apns.APNService.START"

.field public static final STAT_CONNECTING:I = 0x1

.field public static final STAT_NOT_RUNNING:I = 0x0

.field public static final STAT_RUNNING:I = 0x4

.field public static final STOP:Ljava/lang/String; = "com.apns.APNService.STOP"

.field private static final TAG:Ljava/lang/String; = "com.apns.Service"

.field private static _mOption:I

.field private static mDevId:Ljava/lang/String;

.field private static mGroup:Ljava/lang/String;

.field private static mPrefs:Landroid/content/SharedPreferences;


# instance fields
.field private _mAgent:Lcom/apns/APNSAgent;

.field private mConnMan:Landroid/net/ConnectivityManager;

.field private mConnectivityChanged:Landroid/content/BroadcastReceiver;

.field private mStartTime:J

.field private retryCount:I

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "*"

    sput-object v0, Lcom/apns/APNService;->mDevId:Ljava/lang/String;

    .line 52
    const-string v0, "*"

    sput-object v0, Lcom/apns/APNService;->mGroup:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/apns/APNService;->_mOption:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/apns/APNService;->retryCount:I

    .line 196
    new-instance v0, Lcom/apns/APNService$1;

    invoke-direct {v0, p0}, Lcom/apns/APNService$1;-><init>(Lcom/apns/APNService;)V

    iput-object v0, p0, Lcom/apns/APNService;->mConnectivityChanged:Landroid/content/BroadcastReceiver;

    .line 21
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    invoke-static {p0}, Lcom/apns/APNService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/apns/APNService;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/apns/APNService;->doConnect()V

    return-void
.end method

.method private cancelReconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, i:Landroid/content/Intent;
    const-class v3, Lcom/apns/APNService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    const-string v3, "com.apns.APNService.RECONNECT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 192
    .local v2, pi:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/apns/APNService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 193
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 194
    return-void
.end method

.method private disconnect()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/apns/APNService;->_mAgent:Lcom/apns/APNSAgent;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/apns/APNService;->_mAgent:Lcom/apns/APNSAgent;

    invoke-virtual {v0}, Lcom/apns/APNSAgent;->shutdown()V

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/apns/APNService;->cancelReconnect()V

    .line 162
    return-void
.end method

.method private declared-synchronized doConnect()V
    .locals 6

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/apns/APNService;->getDevId()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, devId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/apns/APNService;->getGroup()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, group:Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    :cond_0
    const-string v2, "com.apns.Service"

    const-string v3, "paramter error, devId or channel name is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    iget-wide v2, p0, Lcom/apns/APNService;->mStartTime:J

    invoke-direct {p0, v2, v3}, Lcom/apns/APNService;->scheduleReconnect(J)V

    .line 152
    iget-object v2, p0, Lcom/apns/APNService;->_mAgent:Lcom/apns/APNSAgent;

    if-nez v2, :cond_2

    .line 153
    new-instance v2, Lcom/apns/APNService$MyAgent;

    invoke-virtual {p0}, Lcom/apns/APNService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/apns/APNService;->mGroup:Ljava/lang/String;

    sget-object v5, Lcom/apns/APNService;->mDevId:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/apns/APNService$MyAgent;-><init>(Lcom/apns/APNService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/apns/APNService;->_mAgent:Lcom/apns/APNSAgent;

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/apns/APNService;->_mAgent:Lcom/apns/APNSAgent;

    invoke-virtual {v2}, Lcom/apns/APNSAgent;->checkConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 146
    .end local v0           #devId:Ljava/lang/String;
    .end local v1           #group:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized exit()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    const-string v0, "APNServer.exit(),stoping ..."

    invoke-static {v0}, Lcom/apns/APNService;->log(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/apns/APNService;->mConnectivityChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/apns/APNService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    invoke-direct {p0}, Lcom/apns/APNService;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getState()I
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, state:I
    sget-object v1, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "apns_state"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 87
    :cond_0
    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/apns/APNService;->mConnMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 239
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 242
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 262
    const-string v0, "com.apns.Service"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method private scheduleReconnect(J)V
    .locals 13
    .parameter "startTime"

    .prologue
    .line 165
    iget v9, p0, Lcom/apns/APNService;->retryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/apns/APNService;->retryCount:I

    .line 166
    sget-object v9, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "retryInterval"

    const-wide/32 v11, 0x668a0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 167
    .local v4, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 168
    .local v6, now:J
    sub-long v1, v6, p1

    .line 169
    .local v1, elapsed:J
    cmp-long v9, v1, v4

    if-gez v9, :cond_0

    .line 170
    const-wide/16 v9, 0x4

    mul-long/2addr v9, v4

    const-wide/32 v11, 0x668a0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 174
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "APNServer.scheduleReconnect(),Rescheduling connection in "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 174
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/apns/APNService;->log(Ljava/lang/String;)V

    .line 176
    sget-object v9, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "retryInterval"

    invoke-interface {v9, v10, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v3, i:Landroid/content/Intent;
    const-class v9, Lcom/apns/APNService;

    invoke-virtual {v3, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    const-string v9, "com.apns.APNService.RECONNECT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v3, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 181
    .local v8, pi:Landroid/app/PendingIntent;
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Lcom/apns/APNService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 182
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const/4 v9, 0x0

    add-long v10, v6, v4

    invoke-virtual {v0, v9, v10, v11, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 183
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/apns/APNService;->setState(I)V

    .line 184
    return-void

    .line 172
    .end local v0           #alarmMgr:Landroid/app/AlarmManager;
    .end local v3           #i:Landroid/content/Intent;
    .end local v8           #pi:Landroid/app/PendingIntent;
    :cond_0
    const-wide/32 v4, 0x668a0

    goto :goto_0
.end method

.method public static setState(I)V
    .locals 2
    .parameter "stat"

    .prologue
    .line 91
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apns_state"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public getDevId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "apns_devId"

    const-string v2, "*"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apns/APNService;->mDevId:Ljava/lang/String;

    .line 49
    :cond_0
    sget-object v0, Lcom/apns/APNService;->mDevId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "apns_group"

    const-string v2, "*"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apns/APNService;->mGroup:Ljava/lang/String;

    .line 63
    :cond_0
    sget-object v0, Lcom/apns/APNService;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apns/APNService;->mStartTime:J

    .line 99
    const-string v0, "com.apns.Service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apns/APNService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    .line 100
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/apns/APNService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/apns/APNService;->mConnMan:Landroid/net/ConnectivityManager;

    .line 101
    iget-object v0, p0, Lcom/apns/APNService;->mConnectivityChanged:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 102
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/apns/APNService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    const-string v0, "APNSService.onCreate()"

    invoke-static {v0}, Lcom/apns/APNService;->log(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/apns/APNService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apns/APNService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/apns/APNService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apns/APNService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/apns/APNService;->setState(I)V

    .line 120
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.apns.APNService.STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/apns/APNService;->exit()V

    .line 127
    invoke-virtual {p0}, Lcom/apns/APNService;->stopSelf()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.apns.APNService.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "devId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apns/APNService;->setDevId(Ljava/lang/String;)V

    .line 130
    const-string v0, "ch"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apns/APNService;->setGroup(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/apns/APNService;->doConnect()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.apns.APNService.RECONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/apns/APNService;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/apns/APNService;->doConnect()V

    goto :goto_0
.end method

.method public setDevId(Ljava/lang/String;)V
    .locals 2
    .parameter "dev"

    .prologue
    .line 41
    sput-object p1, Lcom/apns/APNService;->mDevId:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apns_devId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    :cond_0
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 2
    .parameter "gname"

    .prologue
    .line 55
    sput-object p1, Lcom/apns/APNService;->mGroup:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/apns/APNService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apns_group"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    :cond_0
    return-void
.end method
