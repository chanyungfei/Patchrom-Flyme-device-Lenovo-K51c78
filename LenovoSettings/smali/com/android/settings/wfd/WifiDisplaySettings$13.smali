.class Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1000(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 779
    .local v0, "changes":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1002(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I

    .line 780
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->update(I)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1100(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V

    .line 781
    return-void
.end method
