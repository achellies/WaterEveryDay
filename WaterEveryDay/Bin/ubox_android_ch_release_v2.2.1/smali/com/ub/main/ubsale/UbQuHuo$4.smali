.class Lcom/ub/main/ubsale/UbQuHuo$4;
.super Ljava/lang/Thread;
.source "UbQuHuo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbQuHuo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbQuHuo;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbQuHuo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    .line 141
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 143
    :goto_0
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z
    invoke-static {v2}, Lcom/ub/main/ubsale/UbQuHuo;->access$6(Lcom/ub/main/ubsale/UbQuHuo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    return-void

    .line 144
    :cond_0
    const-string v2, "blIsrun"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z
    invoke-static {v4}, Lcom/ub/main/ubsale/UbQuHuo;->access$6(Lcom/ub/main/ubsale/UbQuHuo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->iTime:I
    invoke-static {v2}, Lcom/ub/main/ubsale/UbQuHuo;->access$1(Lcom/ub/main/ubsale/UbQuHuo;)I

    move-result v2

    if-lez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->iTime:I
    invoke-static {v2}, Lcom/ub/main/ubsale/UbQuHuo;->access$1(Lcom/ub/main/ubsale/UbQuHuo;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/ub/main/ubsale/UbQuHuo;->iTime:I
    invoke-static {v2, v3}, Lcom/ub/main/ubsale/UbQuHuo;->access$7(Lcom/ub/main/ubsale/UbQuHuo;I)V

    .line 147
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z
    invoke-static {v2}, Lcom/ub/main/ubsale/UbQuHuo;->access$6(Lcom/ub/main/ubsale/UbQuHuo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 149
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    iget v2, v2, Lcom/ub/main/ubsale/UbQuHuo;->id:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 150
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ub/main/ubsale/UbQuHuo;->access$8(Lcom/ub/main/ubsale/UbQuHuo;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo$4;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    const/4 v3, 0x0

    #setter for: Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z
    invoke-static {v2, v3}, Lcom/ub/main/ubsale/UbQuHuo;->access$9(Lcom/ub/main/ubsale/UbQuHuo;Z)V

    goto :goto_1
.end method
