.class Lcom/android/server/InputMethodManagerService$SwitchImeTask;
.super Ljava/util/TimerTask;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchImeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 3894
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "x1"    # Lcom/android/server/InputMethodManagerService$1;

    .prologue
    .line 3894
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$SwitchImeTask;-><init>(Lcom/android/server/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 3896
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3897
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index1:I
    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    if-ne v7, v9, :cond_9

    .line 3898
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    move-result-object v3

    .line 3899
    .local v3, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3900
    .local v0, "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v12, :cond_1

    .line 3901
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 3902
    const-string v7, "InputMethodManagerService"

    const-string v9, "Only one IME within list, ignored"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    :cond_0
    monitor-exit v8

    .line 3940
    .end local v0    # "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :goto_0
    return-void

    .line 3905
    .restart local v0    # "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 3906
    .local v6, "listSize":I
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3909
    .local v1, "currentSubtypeId":I
    :goto_1
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 3910
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ImeSubtypeListItem size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_6

    .line 3912
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 3913
    .local v4, "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v7, v4, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7, v0}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v4, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v7, v1, :cond_8

    .line 3914
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 3915
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",i: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",listSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    :cond_3
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # += operator for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7, v2}, Lcom/android/server/InputMethodManagerService;->access$1512(Lcom/android/server/InputMethodManagerService;I)I

    .line 3918
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    rem-int/2addr v9, v6

    # setter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1502(Lcom/android/server/InputMethodManagerService;I)I

    .line 3919
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    if-gez v7, :cond_4

    .line 3920
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # += operator for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7, v6}, Lcom/android/server/InputMethodManagerService;->access$1512(Lcom/android/server/InputMethodManagerService;I)I

    .line 3922
    :cond_4
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 3923
    .local v5, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 3924
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set input method in runnable! index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",item: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    :cond_5
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v5, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    iget v10, v5, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {v7, v9, v10}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3930
    .end local v4    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v5    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_6
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1502(Lcom/android/server/InputMethodManagerService;I)I

    .line 3931
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->index1:I
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1602(Lcom/android/server/InputMethodManagerService;I)I

    .line 3939
    .end local v0    # "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "currentSubtypeId":I
    .end local v2    # "i":I
    .end local v3    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v6    # "listSize":I
    :goto_3
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3906
    .restart local v0    # "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v6    # "listSize":I
    :cond_7
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 3911
    .restart local v1    # "currentSubtypeId":I
    .restart local v2    # "i":I
    .restart local v4    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 3933
    .end local v0    # "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "currentSubtypeId":I
    .end local v2    # "i":I
    .end local v3    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v4    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v6    # "listSize":I
    :cond_9
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index1:I
    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    # setter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1502(Lcom/android/server/InputMethodManagerService;I)I

    .line 3934
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "schedule switch task after 500ms! index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->index2:I
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mTimer:Ljava/util/Timer;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)Ljava/util/Timer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Timer;->purge()I

    .line 3936
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/android/server/InputMethodManagerService;->mTimer:Ljava/util/Timer;
    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->access$1902(Lcom/android/server/InputMethodManagerService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 3937
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mTimer:Ljava/util/Timer;
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)Ljava/util/Timer;

    move-result-object v7

    new-instance v9, Lcom/android/server/InputMethodManagerService$SwitchImeTask;

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {v9, v10}, Lcom/android/server/InputMethodManagerService$SwitchImeTask;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
