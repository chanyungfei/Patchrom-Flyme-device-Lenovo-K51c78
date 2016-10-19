.class Lcom/android/server/display/WifiDisplayController$42;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 3952
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$42;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3955
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3956
    const-string v0, "WifiDisplayController"

    const-string v1, "HDMI on, user DON\'T turn off WifiDisplay -> turn off HDMI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$42;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->turnOffHdmi()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$11100(Lcom/android/server/display/WifiDisplayController;)V

    .line 3959
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$42;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$10702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3960
    return-void
.end method
