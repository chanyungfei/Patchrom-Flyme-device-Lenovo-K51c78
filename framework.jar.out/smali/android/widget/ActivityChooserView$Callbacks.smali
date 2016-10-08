.class Landroid/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActivityChooserView;
    .param p2, "x1"    # Landroid/widget/ActivityChooserView$1;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;)V

    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 2

    .prologue
    .line 724
    const-string v0, "ActivityChooserView"

    const-string v1, "Callbacks.notifyOnDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$1200(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$1200(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 729
    :cond_0
    return-void
.end method

.method private startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v6, 0x0

    .line 733
    :try_start_0
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$1300(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v2

    .line 735
    .local v2, "re":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$1400(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 736
    .local v0, "appLabel":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$1500(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    const v4, #android:string@activitychooserview_choose_application_error#t

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "message":Ljava/lang/String;
    const-string v3, "ActivityChooserView"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$1600(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 672
    const-string v3, "ActivityChooserView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callbacks.onClick, view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$800(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 675
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 676
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 677
    .local v0, "defaultActivity":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    .line 678
    .local v1, "index":I
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 679
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 680
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 681
    invoke-direct {p0, v2, v0}, Landroid/widget/ActivityChooserView$Callbacks;->startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 683
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$800(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 691
    .end local v0    # "defaultActivity":Landroid/content/pm/ResolveInfo;
    .end local v1    # "index":I
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$900(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 686
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # setter for: Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v3, v6}, Landroid/widget/ActivityChooserView;->access$702(Landroid/widget/ActivityChooserView;Z)Z

    .line 687
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mInitialActivityCount:I
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->access$1000(Landroid/widget/ActivityChooserView;)I

    move-result v4

    # invokes: Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v3, v4}, Landroid/widget/ActivityChooserView;->access$600(Landroid/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 689
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 715
    const-string v0, "ActivityChooserView"

    const-string v1, "Callbacks.onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-direct {p0}, Landroid/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 718
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 721
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v4, "ActivityChooserView"

    const-string v5, "Callbacks.onItemClick"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 641
    .local v0, "adapter":Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-virtual {v0, p3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 642
    .local v1, "itemViewType":I
    packed-switch v1, :pswitch_data_0

    .line 666
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 644
    :pswitch_0
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    const v5, 0x7fffffff

    # invokes: Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v4, v5}, Landroid/widget/ActivityChooserView;->access$600(Landroid/widget/ActivityChooserView;I)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 647
    :pswitch_1
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v4}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 648
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->access$700(Landroid/widget/ActivityChooserView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 650
    if-lez p3, :cond_0

    .line 651
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_0

    .line 656
    :cond_1
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 657
    :goto_1
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 658
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 659
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 661
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2, v3}, Landroid/widget/ActivityChooserView$Callbacks;->startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 656
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 696
    const-string v1, "ActivityChooserView"

    const-string v2, "Callbacks.onLongClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$800(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 700
    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$1100(Landroid/widget/ActivityChooserView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 701
    const/4 v0, 0x0

    .line 710
    :cond_0
    :goto_0
    return v0

    .line 703
    :cond_1
    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 704
    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # setter for: Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v1, v0}, Landroid/widget/ActivityChooserView;->access$702(Landroid/widget/ActivityChooserView;Z)Z

    .line 705
    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mInitialActivityCount:I
    invoke-static {v2}, Landroid/widget/ActivityChooserView;->access$1000(Landroid/widget/ActivityChooserView;)I

    move-result v2

    # invokes: Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v1, v2}, Landroid/widget/ActivityChooserView;->access$600(Landroid/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 708
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
