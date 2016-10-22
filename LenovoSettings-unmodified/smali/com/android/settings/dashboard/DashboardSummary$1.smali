.class Lcom/android/settings/dashboard/DashboardSummary$1;
.super Landroid/os/Handler;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/settings/dashboard/DashboardSummary;->access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;Z)V

    goto :goto_0

    .line 100
    .end local v0    # "context":Landroid/content/Context;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/android/settings/dashboard/DashboardSummary;->moveToHeaderIfNeeded(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/settings/dashboard/DashboardSummary;->access$100(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    # invokes: Lcom/android/settings/dashboard/DashboardSummary;->handleNormalClick(Landroid/preference/PreferenceActivity$Header;)V
    invoke-static {v2, v1}, Lcom/android/settings/dashboard/DashboardSummary;->access$200(Lcom/android/settings/dashboard/DashboardSummary;Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
