.class Lcom/ub/main/ubsale/UbBuy$3;
.super Ljava/lang/Object;
.source "UbBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbBuy;->doOrder(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ub/main/ubsale/UbBuy$3;->this$0:Lcom/ub/main/ubsale/UbBuy;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 434
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 435
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 436
    return-void
.end method
