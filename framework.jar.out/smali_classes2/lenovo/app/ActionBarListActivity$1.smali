.class Llenovo/app/ActionBarListActivity$1;
.super Ljava/lang/Object;
.source "ActionBarListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarListActivity;


# direct methods
.method constructor <init>(Llenovo/app/ActionBarListActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Llenovo/app/ActionBarListActivity$1;->this$0:Llenovo/app/ActionBarListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Llenovo/app/ActionBarListActivity$1;->this$0:Llenovo/app/ActionBarListActivity;

    iget-object v0, v0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Llenovo/app/ActionBarListActivity$1;->this$0:Llenovo/app/ActionBarListActivity;

    iget-object v1, v1, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 51
    return-void
.end method
