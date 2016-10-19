.class Landroid/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 440
    const-string v3, "PreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKey, keyCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v3, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    # getter for: Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Landroid/preference/PreferenceFragment;->access$100(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v2

    .line 449
    :cond_1
    iget-object v3, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    # getter for: Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Landroid/preference/PreferenceFragment;->access$100(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 450
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v3, v0, Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 451
    iget-object v2, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    # getter for: Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Landroid/preference/PreferenceFragment;->access$100(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 452
    .local v1, "selectedView":Landroid/view/View;
    check-cast v0, Landroid/preference/Preference;

    .end local v0    # "selectedItem":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2, p3}, Landroid/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method
