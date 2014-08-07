.class Lcom/ub/main/LaunchActivity$6$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/LaunchActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ub/main/LaunchActivity$6;


# direct methods
.method constructor <init>(Lcom/ub/main/LaunchActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/LaunchActivity$6$1;->this$1:Lcom/ub/main/LaunchActivity$6;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$6$1;->this$1:Lcom/ub/main/LaunchActivity$6;

    #getter for: Lcom/ub/main/LaunchActivity$6;->this$0:Lcom/ub/main/LaunchActivity;
    invoke-static {v0}, Lcom/ub/main/LaunchActivity$6;->access$0(Lcom/ub/main/LaunchActivity$6;)Lcom/ub/main/LaunchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/LaunchActivity;->finish()V

    .line 417
    return-void
.end method
