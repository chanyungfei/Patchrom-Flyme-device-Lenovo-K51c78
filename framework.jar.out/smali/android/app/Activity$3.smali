.class Landroid/app/Activity$3;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->initTintAndIconTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 4888
    iput-object p1, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4890
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # invokes: Landroid/app/Activity;->getTintAndIconThemeColors()V
    invoke-static {v2}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)V

    .line 4891
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mShouldSetStatusBarTint:Z
    invoke-static {v2}, Landroid/app/Activity;->access$500(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4892
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v2}, Landroid/app/Activity;->access$600(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4893
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v3}, Landroid/app/Activity;->access$600(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 4894
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v3}, Landroid/app/Activity;->access$600(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Landroid/app/Activity;->isWhiteColor(I)Z
    invoke-static {v3}, Landroid/app/Activity;->access$700(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/Window;->romUI_setDarkStatusIcon(Z)V

    .line 4907
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 4894
    goto :goto_0

    .line 4898
    :cond_2
    const-string v0, "Fail to get the tint color"

    # invokes: Landroid/app/Activity;->tintLog(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/app/Activity;->access$800(Ljava/lang/String;)V

    .line 4899
    iget-object v0, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # invokes: Landroid/app/Activity;->setFlags(Z)V
    invoke-static {v0, v1}, Landroid/app/Activity;->access$900(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 4901
    :cond_3
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mShouldSetStatusBarIconTheme:Z
    invoke-static {v2}, Landroid/app/Activity;->access$1000(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4902
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;
    invoke-static {v2}, Landroid/app/Activity;->access$1100(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4903
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;
    invoke-static {v3}, Landroid/app/Activity;->access$1100(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Landroid/app/Activity;->isWhiteColor(I)Z
    invoke-static {v3}, Landroid/app/Activity;->access$700(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/Window;->romUI_setDarkStatusIcon(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
