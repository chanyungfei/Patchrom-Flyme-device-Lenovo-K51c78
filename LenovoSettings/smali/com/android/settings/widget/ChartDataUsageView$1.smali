.class Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$1;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$1;->this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .line 98
    .local v0, "sweep":Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$1;->this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    # invokes: Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->access$000(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)V

    .line 99
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$1;->this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    # invokes: Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->access$100(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;)V

    .line 102
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$1;->this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    const/4 v2, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;Z)V
    invoke-static {v1, v0, v2}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->access$200(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;Z)V

    .line 103
    return-void
.end method
