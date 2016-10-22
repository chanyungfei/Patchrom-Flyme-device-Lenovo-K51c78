.class Lvibeui/content/res/AppIconThemeServices$2;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvibeui/content/res/AppIconThemeServices;->handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvibeui/content/res/AppIconThemeServices;

.field final synthetic val$themeId:Ljava/lang/String;

.field final synthetic val$themePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvibeui/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lvibeui/content/res/AppIconThemeServices$2;->this$0:Lvibeui/content/res/AppIconThemeServices;

    iput-object p2, p0, Lvibeui/content/res/AppIconThemeServices$2;->val$themePath:Ljava/lang/String;

    iput-object p3, p0, Lvibeui/content/res/AppIconThemeServices$2;->val$themeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices$2;->this$0:Lvibeui/content/res/AppIconThemeServices;

    # invokes: Lvibeui/content/res/AppIconThemeServices;->parseIconMapFile()V
    invoke-static {v0}, Lvibeui/content/res/AppIconThemeServices;->access$100(Lvibeui/content/res/AppIconThemeServices;)V

    .line 340
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices$2;->this$0:Lvibeui/content/res/AppIconThemeServices;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lvibeui/content/res/AppIconThemeServices;->mTimeStamp:J
    invoke-static {v0, v2, v3}, Lvibeui/content/res/AppIconThemeServices;->access$202(Lvibeui/content/res/AppIconThemeServices;J)J

    .line 341
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices$2;->this$0:Lvibeui/content/res/AppIconThemeServices;

    const/4 v1, 0x1

    # invokes: Lvibeui/content/res/AppIconThemeServices;->setIsReadyState(Z)V
    invoke-static {v0, v1}, Lvibeui/content/res/AppIconThemeServices;->access$300(Lvibeui/content/res/AppIconThemeServices;Z)V

    .line 343
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices$2;->this$0:Lvibeui/content/res/AppIconThemeServices;

    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices$2;->val$themePath:Ljava/lang/String;

    iget-object v2, p0, Lvibeui/content/res/AppIconThemeServices$2;->val$themeId:Ljava/lang/String;

    # invokes: Lvibeui/content/res/AppIconThemeServices;->sendSwitchCompleted(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lvibeui/content/res/AppIconThemeServices;->access$400(Lvibeui/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method
