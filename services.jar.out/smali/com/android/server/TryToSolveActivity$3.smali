.class Lcom/android/server/TryToSolveActivity$3;
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
    .line 146
    iput-object p1, p0, Lcom/android/server/TryToSolveActivity$3;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-direct {p0, p1, p2}, Lcom/android/server/TryToSolveActivity$ListItem;-><init>(Lcom/android/server/TryToSolveActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.updateassist.action.FeedbackUnconstrained"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pkgname"

    iget-object v2, p0, Lcom/android/server/TryToSolveActivity$3;->this$0:Lcom/android/server/TryToSolveActivity;

    # getter for: Lcom/android/server/TryToSolveActivity;->packageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/TryToSolveActivity;->access$300(Lcom/android/server/TryToSolveActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "entry"

    const-string v2, "crash_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/server/TryToSolveActivity$3;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-virtual {v1, v0}, Lcom/android/server/TryToSolveActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
