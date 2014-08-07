.class Lcom/ub/main/ubsale/UbQuHuo$6;
.super Ljava/lang/Object;
.source "UbQuHuo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbQuHuo;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ub/main/ubsale/UbQuHuo$6;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$6;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo;->isCouponBuy:Z
    invoke-static {v0}, Lcom/ub/main/ubsale/UbQuHuo;->access$10(Lcom/ub/main/ubsale/UbQuHuo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$6;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    invoke-virtual {v0}, Lcom/ub/main/ubsale/UbQuHuo;->finish()V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$6;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #calls: Lcom/ub/main/ubsale/UbQuHuo;->backDo()V
    invoke-static {v0}, Lcom/ub/main/ubsale/UbQuHuo;->access$5(Lcom/ub/main/ubsale/UbQuHuo;)V

    goto :goto_0
.end method
