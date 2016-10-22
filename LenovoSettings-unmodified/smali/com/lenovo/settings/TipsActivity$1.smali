.class Lcom/lenovo/settings/TipsActivity$1;
.super Ljava/lang/Object;
.source "TipsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/TipsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/TipsActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/TipsActivity;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/settings/TipsActivity$1;->this$0:Lcom/lenovo/settings/TipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/settings/TipsActivity$1;->this$0:Lcom/lenovo/settings/TipsActivity;

    invoke-virtual {v0}, Lcom/lenovo/settings/TipsActivity;->finish()V

    .line 30
    return-void
.end method
