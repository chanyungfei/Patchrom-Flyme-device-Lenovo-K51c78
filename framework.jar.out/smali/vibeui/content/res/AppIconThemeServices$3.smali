.class Lvibeui/content/res/AppIconThemeServices$3;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvibeui/content/res/AppIconThemeServices;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvibeui/content/res/AppIconThemeServices;


# direct methods
.method constructor <init>(Lvibeui/content/res/AppIconThemeServices;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lvibeui/content/res/AppIconThemeServices$3;->this$0:Lvibeui/content/res/AppIconThemeServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 444
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices$3;->this$0:Lvibeui/content/res/AppIconThemeServices;

    # invokes: Lvibeui/content/res/AppIconThemeServices;->parseIconMapFile()V
    invoke-static {v0}, Lvibeui/content/res/AppIconThemeServices;->access$100(Lvibeui/content/res/AppIconThemeServices;)V

    .line 445
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices$3;->this$0:Lvibeui/content/res/AppIconThemeServices;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lvibeui/content/res/AppIconThemeServices;->mTimeStamp:J
    invoke-static {v0, v2, v3}, Lvibeui/content/res/AppIconThemeServices;->access$202(Lvibeui/content/res/AppIconThemeServices;J)J

    .line 446
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices$3;->this$0:Lvibeui/content/res/AppIconThemeServices;

    const/4 v1, 0x1

    # invokes: Lvibeui/content/res/AppIconThemeServices;->setIsReadyState(Z)V
    invoke-static {v0, v1}, Lvibeui/content/res/AppIconThemeServices;->access$300(Lvibeui/content/res/AppIconThemeServices;Z)V

    .line 447
    return-void
.end method
