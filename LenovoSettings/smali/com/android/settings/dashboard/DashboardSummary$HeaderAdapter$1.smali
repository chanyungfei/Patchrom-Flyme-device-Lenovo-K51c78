.class Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$1;
.super Landroid/os/Handler;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$1;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 501
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$1;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateSimStatus()V

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
