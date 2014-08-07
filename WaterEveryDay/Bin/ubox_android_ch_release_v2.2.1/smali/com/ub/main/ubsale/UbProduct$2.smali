.class Lcom/ub/main/ubsale/UbProduct$2;
.super Ljava/lang/Object;
.source "UbProduct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbProduct;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ub/main/ubsale/UbProduct$2;->this$0:Lcom/ub/main/ubsale/UbProduct;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct$2;->this$0:Lcom/ub/main/ubsale/UbProduct;

    invoke-virtual {v0}, Lcom/ub/main/ubsale/UbProduct;->finish()V

    .line 285
    return-void
.end method
