.class Lcom/ub/main/ubsale/UbQuHuo$1$1;
.super Ljava/lang/Object;
.source "UbQuHuo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbQuHuo$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ub/main/ubsale/UbQuHuo$1;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbQuHuo$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbQuHuo$1$1;->this$1:Lcom/ub/main/ubsale/UbQuHuo$1;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$1$1;->this$1:Lcom/ub/main/ubsale/UbQuHuo$1;

    #getter for: Lcom/ub/main/ubsale/UbQuHuo$1;->this$0:Lcom/ub/main/ubsale/UbQuHuo;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbQuHuo$1;->access$0(Lcom/ub/main/ubsale/UbQuHuo$1;)Lcom/ub/main/ubsale/UbQuHuo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/ubsale/UbQuHuo;->finish()V

    .line 201
    return-void
.end method
