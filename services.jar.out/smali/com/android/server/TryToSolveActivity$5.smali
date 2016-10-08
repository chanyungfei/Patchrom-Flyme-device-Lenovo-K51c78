.class Lcom/android/server/TryToSolveActivity$5;
.super Lcom/android/server/TryToSolveActivity$ListItem;
.source "TryToSolveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TryToSolveActivity;->setupListItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TryToSolveActivity;


# direct methods
.method constructor <init>(Lcom/android/server/TryToSolveActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/server/TryToSolveActivity$5;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-direct {p0, p1, p2}, Lcom/android/server/TryToSolveActivity$ListItem;-><init>(Lcom/android/server/TryToSolveActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v2, "package"

    iget-object v3, p0, Lcom/android/server/TryToSolveActivity$5;->this$0:Lcom/android/server/TryToSolveActivity;

    # getter for: Lcom/android/server/TryToSolveActivity;->packageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/TryToSolveActivity;->access$300(Lcom/android/server/TryToSolveActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    iget-object v2, p0, Lcom/android/server/TryToSolveActivity$5;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-virtual {v2, v0}, Lcom/android/server/TryToSolveActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method
