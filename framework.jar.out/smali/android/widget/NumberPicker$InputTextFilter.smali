.class Landroid/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2292
    iput-object p1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 2308
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    .line 2309
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2311
    .local v3, "filtered":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 2313
    move/from16 v4, p2

    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_0

    .line 2314
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2318
    :cond_0
    move/from16 v0, p3

    if-ne v4, v0, :cond_1

    .line 2320
    const/4 v3, 0x0

    .line 2323
    .end local v4    # "i":I
    :cond_1
    if-nez v3, :cond_2

    .line 2324
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2327
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v12}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2330
    .local v7, "result":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2376
    .end local v7    # "result":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 2313
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2333
    .end local v4    # "i":I
    .restart local v7    # "result":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v11, v7}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v9

    .line 2342
    .local v9, "val":I
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mMaxValue:I
    invoke-static {v11}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v11

    if-gt v9, v11, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mMaxValue:I
    invoke-static {v12}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v11, v12, :cond_6

    .line 2343
    :cond_5
    const-string v7, ""

    goto :goto_1

    :cond_6
    move-object v7, v3

    .line 2345
    goto :goto_1

    .line 2348
    .end local v3    # "filtered":Ljava/lang/CharSequence;
    .end local v7    # "result":Ljava/lang/String;
    .end local v9    # "val":I
    :cond_7
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2349
    .restart local v3    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2354
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;
    invoke-static {v11}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 2355
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    iget-object v12, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;
    invoke-static {v12}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2357
    :cond_8
    const-string v7, ""

    goto :goto_1

    .line 2359
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v12}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2361
    .restart local v7    # "result":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2362
    .local v8, "str":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_b

    aget-object v9, v2, v5

    .line 2363
    .local v9, "val":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 2364
    .local v10, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2365
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    # invokes: Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V
    invoke-static {v11, v12, v13}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;II)V

    .line 2366
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    move/from16 v0, p5

    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_1

    .line 2362
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2373
    .end local v9    # "val":Ljava/lang/String;
    .end local v10    # "valLowerCase":Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;
    invoke-static {v11}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 2374
    iget-object v11, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    iget-object v12, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;
    invoke-static {v12}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2376
    :cond_c
    const-string v7, ""

    goto/16 :goto_1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 2302
    # getter for: Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C
    invoke-static {}, Landroid/widget/NumberPicker;->access$1100()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2297
    const/4 v0, 0x1

    return v0
.end method
