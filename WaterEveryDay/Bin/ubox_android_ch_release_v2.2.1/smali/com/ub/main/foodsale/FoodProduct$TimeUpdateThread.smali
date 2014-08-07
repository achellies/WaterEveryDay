.class Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;
.super Ljava/lang/Thread;
.source "FoodProduct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/FoodProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeUpdateThread"
.end annotation


# static fields
.field public static final MINTUE:I = 0xea60

.field public static final SECOND:I = 0x3e8


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/ub/main/foodsale/FoodProduct;

.field private twoMin:I

.field private twominUpdate:Z


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodProduct;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 712
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->running:Z

    .line 722
    iput-boolean v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twominUpdate:Z

    .line 723
    iput v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twoMin:I

    return-void
.end method


# virtual methods
.method public openTwoMintuesUpdate()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twominUpdate:Z

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twoMin:I

    .line 728
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 731
    :goto_0
    iget-boolean v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->running:Z

    if-nez v1, :cond_0

    .line 747
    return-void

    .line 733
    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->sleep(J)V

    .line 734
    iget-boolean v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twominUpdate:Z

    if-eqz v1, :cond_1

    .line 735
    iget v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twoMin:I

    add-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twoMin:I

    .line 736
    iget v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twoMin:I

    const v2, 0x1d4c0

    if-lt v1, v2, :cond_1

    .line 737
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iget-object v1, v1, Lcom/ub/main/foodsale/FoodProduct;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 738
    const/4 v1, 0x0

    iput v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->twoMin:I

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->serverTime:J
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodProduct;->access$1(Lcom/ub/main/foodsale/FoodProduct;)J

    move-result-wide v2

    add-long/2addr v2, v4

    #setter for: Lcom/ub/main/foodsale/FoodProduct;->serverTime:J
    invoke-static {v1, v2, v3}, Lcom/ub/main/foodsale/FoodProduct;->access$2(Lcom/ub/main/foodsale/FoodProduct;J)V

    .line 742
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iget-object v1, v1, Lcom/ub/main/foodsale/FoodProduct;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopRunning()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->running:Z

    .line 720
    return-void
.end method
