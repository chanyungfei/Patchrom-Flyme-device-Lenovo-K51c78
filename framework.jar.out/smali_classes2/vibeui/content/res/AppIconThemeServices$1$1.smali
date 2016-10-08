.class Lvibeui/content/res/AppIconThemeServices$1$1;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvibeui/content/res/AppIconThemeServices$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvibeui/content/res/AppIconThemeServices$1;

.field final synthetic val$themePath:Ljava/lang/String;

.field final synthetic val$themeResId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvibeui/content/res/AppIconThemeServices$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lvibeui/content/res/AppIconThemeServices$1$1;->this$1:Lvibeui/content/res/AppIconThemeServices$1;

    iput-object p2, p0, Lvibeui/content/res/AppIconThemeServices$1$1;->val$themePath:Ljava/lang/String;

    iput-object p3, p0, Lvibeui/content/res/AppIconThemeServices$1$1;->val$themeResId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices$1$1;->this$1:Lvibeui/content/res/AppIconThemeServices$1;

    iget-object v0, v0, Lvibeui/content/res/AppIconThemeServices$1;->this$0:Lvibeui/content/res/AppIconThemeServices;

    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices$1$1;->val$themePath:Ljava/lang/String;

    iget-object v2, p0, Lvibeui/content/res/AppIconThemeServices$1$1;->val$themeResId:Ljava/lang/String;

    # invokes: Lvibeui/content/res/AppIconThemeServices;->handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lvibeui/content/res/AppIconThemeServices;->access$000(Lvibeui/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method
