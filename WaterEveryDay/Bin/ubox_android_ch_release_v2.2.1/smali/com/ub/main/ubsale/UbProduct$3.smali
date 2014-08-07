.class Lcom/ub/main/ubsale/UbProduct$3;
.super Ljava/lang/Object;
.source "UbProduct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbProduct;->gotoBuy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbProduct;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbProduct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbProduct$3;->this$0:Lcom/ub/main/ubsale/UbProduct;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 358
    return-void
.end method
