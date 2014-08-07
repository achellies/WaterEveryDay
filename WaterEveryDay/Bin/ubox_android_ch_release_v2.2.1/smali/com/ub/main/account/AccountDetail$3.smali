.class Lcom/ub/main/account/AccountDetail$3;
.super Ljava/lang/Object;
.source "AccountDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountDetail;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountDetail;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountDetail$3;->this$0:Lcom/ub/main/account/AccountDetail;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail$3;->this$0:Lcom/ub/main/account/AccountDetail;

    invoke-virtual {v0}, Lcom/ub/main/account/AccountDetail;->finish()V

    .line 286
    return-void
.end method
