.class Lcom/ub/main/account/Feedback$5;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/Feedback;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/Feedback;


# direct methods
.method constructor <init>(Lcom/ub/main/account/Feedback;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/Feedback$5;->this$0:Lcom/ub/main/account/Feedback;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 134
    return-void
.end method
