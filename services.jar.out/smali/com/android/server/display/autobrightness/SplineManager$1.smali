.class Lcom/android/server/display/autobrightness/SplineManager$1;
.super Ljava/lang/Object;
.source "SplineManager.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/SplineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/SplineManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/autobrightness/SplineManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/display/autobrightness/SplineManager$1;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager$1;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->updateTwilightMode()V
    invoke-static {v0}, Lcom/android/server/display/autobrightness/SplineManager;->access$000(Lcom/android/server/display/autobrightness/SplineManager;)V

    .line 62
    return-void
.end method
