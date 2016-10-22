.class Lcom/lenovo/internal/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/internal/app/ToolbarActionBar$1;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/internal/app/ToolbarActionBar$1;->this$0:Lcom/lenovo/internal/app/ToolbarActionBar;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/ToolbarActionBar;->populateOptionsMenu()V

    .line 70
    return-void
.end method
