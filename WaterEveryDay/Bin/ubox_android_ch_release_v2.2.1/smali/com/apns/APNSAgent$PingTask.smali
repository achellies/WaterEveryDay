.class Lcom/apns/APNSAgent$PingTask;
.super Ljava/util/TimerTask;
.source "APNSAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apns/APNSAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apns/APNSAgent;


# direct methods
.method private constructor <init>(Lcom/apns/APNSAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/apns/APNSAgent$PingTask;->this$0:Lcom/apns/APNSAgent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apns/APNSAgent;Lcom/apns/APNSAgent$PingTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/apns/APNSAgent$PingTask;-><init>(Lcom/apns/APNSAgent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/apns/APNSAgent$PingTask;->this$0:Lcom/apns/APNSAgent;

    #getter for: Lcom/apns/APNSAgent;->_mPingTime:J
    invoke-static {v2}, Lcom/apns/APNSAgent;->access$0(Lcom/apns/APNSAgent;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/apns/APNSAgent$PingTask;->this$0:Lcom/apns/APNSAgent;

    #getter for: Lcom/apns/APNSAgent;->PING_TIMEOUT:I
    invoke-static {v2}, Lcom/apns/APNSAgent;->access$1(Lcom/apns/APNSAgent;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/apns/APNSAgent$PingTask;->this$0:Lcom/apns/APNSAgent;

    const-string v1, "APNSAgent.ping timeout"

    invoke-virtual {v0, v1}, Lcom/apns/APNSAgent;->log(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/apns/APNSAgent$PingTask;->this$0:Lcom/apns/APNSAgent;

    #calls: Lcom/apns/APNSAgent;->doConnect()V
    invoke-static {v0}, Lcom/apns/APNSAgent;->access$2(Lcom/apns/APNSAgent;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/apns/APNSAgent$PingTask;->this$0:Lcom/apns/APNSAgent;

    invoke-virtual {v0}, Lcom/apns/APNSAgent;->ping()Z

    goto :goto_0
.end method
