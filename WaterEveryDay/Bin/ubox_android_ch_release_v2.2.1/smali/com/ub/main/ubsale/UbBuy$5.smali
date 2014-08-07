.class Lcom/ub/main/ubsale/UbBuy$5;
.super Ljava/lang/Object;
.source "UbBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbBuy;->payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbBuy;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbBuy$5;->this$0:Lcom/ub/main/ubsale/UbBuy;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$5;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #calls: Lcom/ub/main/ubsale/UbBuy;->goToGetProductActivity()V
    invoke-static {v0}, Lcom/ub/main/ubsale/UbBuy;->access$5(Lcom/ub/main/ubsale/UbBuy;)V

    .line 623
    return-void
.end method
