.class Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultAccountSelectionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/DefaultAccountSelectionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherAccountSelectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;


# direct methods
.method private constructor <init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;Lcom/mediatek/widget/DefaultAccountSelectionBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/widget/DefaultAccountSelectionBar;
    .param p2, "x1"    # Lcom/mediatek/widget/DefaultAccountSelectionBar$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;-><init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "action":Ljava/lang/String;
    const-string v4, "DefaultAccountSelectionBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onReceive] action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;
    invoke-static {v4}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$100(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Lcom/mediatek/widget/CustomAccountRemoteViews;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getOtherAccounts()Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "accountItems":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    const-string v4, "SELECT_OTHER_ACCOUNTS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    :cond_0
    const-string v4, "DefaultAccountSelectionBar"

    const-string v5, "--- wrong activity status ---"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->build(Landroid/content/Context;)Lcom/mediatek/widget/DefaultAccountPickerDialog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->setData(Ljava/util/List;)Lcom/mediatek/widget/DefaultAccountPickerDialog;

    move-result-object v2

    .line 141
    .local v2, "defaultAccountPickerDialog":Lcom/mediatek/widget/DefaultAccountPickerDialog;
    iget-object v4, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 142
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const-string v4, "select_other_account"

    invoke-virtual {v3, v2, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 143
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 148
    .end local v2    # "defaultAccountPickerDialog":Lcom/mediatek/widget/DefaultAccountPickerDialog;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :goto_1
    iget-object v4, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/mediatek/widget/DefaultAccountSelectionBar;->hideNotification(Landroid/content/Context;)V
    invoke-static {v4, v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$300(Lcom/mediatek/widget/DefaultAccountSelectionBar;Landroid/content/Context;)V

    goto :goto_0

    .line 145
    :cond_2
    const-string v4, "DefaultAccountSelectionBar"

    const-string v5, "--- wrong context ---"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
